class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_user, only: [:destroy]
    
  #POST /articles/:article_id/comments 
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params) #親モデルに対する外部参照キー(article_id)を自動でセット
    @comment.user = current_user
    @comment.title = "無題" if @comment.title.nil? || @comment.title.blank?
    if @comment.save
      redirect_to article_path(@article)
      flash[:notice] = "コメントが投稿されました。"
    else
      redirect_to article_path(@article)
      flash[:alert] = "内容を入力してください。"
    end
  end
  
  # DELETE /articles/:article_id/comments/:id
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    if @comment.destroy
      redirect_to article_path(@article)
      flash[:notice] = "コメントを削除しました。"
    else
      redirect_to article_path(@article)
      flash[:alert] = "コメントの削除に失敗しました。"
    end
  end
  
  private
    def comment_params
      params.require(:comment).permit(:title,:content)
    end
    
    def admin_user
      if current_user.nil? || !current_user.admin?
      redirect_to root_url ,alert:'権限がないためアクセスできません。'
      end
    end
end
