class CommentsController < ApplicationController
  
  #POST /articles/:article_id/comments
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      # logger.debug @comment.errors.inspect
      # logger.debug @comment.inspect
      redirect_to article_path(@article)
    else
      render :"articles/new"
    end
    
  end
  
  private
    def comment_params
      params.require(:comment).permit(:title,:content)
    end
end
