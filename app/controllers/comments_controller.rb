class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_user, only: [:destroy]

  # POST /articles/:article_id/comments
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params) # 親モデルに対する外部参照キー(article_id)を自動でセット
    @comment.user = current_user
    @comment.title = '無題' if @comment.title.nil? || @comment.title.blank?
    if @comment.save
      flash[:notice] = 'コメントが投稿されました。'
    else
      flash[:alert] = '内容を入力してください。'
    end
    redirect_to article_path(@article)
  end

  # DELETE /articles/:article_id/comments/:id
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    if @comment.destroy
      flash[:notice] = 'コメントを削除しました。'
    else
      flash[:alert] = 'コメントの削除に失敗しました。'
    end
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :content)
  end

  def admin_user
    redirect_to root_url, alert: '権限がないためアクセスできません。' if current_user.nil? || !current_user.admin?
  end
end
