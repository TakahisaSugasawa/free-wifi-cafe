class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_user, only: [:destroy]
    
  #POST /articles/:article_id/comments 
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params) #親モデルに対する外部参照キー(article_id)を自動でセット
    @comment.user = current_user
    # logger.debug @comment.inspect
    if @comment.save
      # logger.debug @comment.errors.inspect
      # logger.debug @comment.inspect
      redirect_to article_path(@article)
    else
      render :"articles/new"
    end
  end
  
  # DELETE /articles/:article_id/comments/:id
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    if @comment.destroy
      redirect_to article_path(@article)
    end
  end
  
  private
    def comment_params
      params.require(:comment).permit(:title,:content)
    end
    
    def admin_user
      redirect_to(root_url) if current_user.nil? || !current_user.admin?
      # logger.debug current_user.errors.inspect 
    end
end
