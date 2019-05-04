class FavoritesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @favorite = Favorite.create(user_id: current_user.id, article_id: params[:article_id])
    @article.reload

    # @favorite = Favorite.create(user_id: current_user.id, article_id: params[:article_id])
    # @favorites = Favorite.where(article_id: params[:article_id])
    # @articles = Article.all
  end

  def destroy
    @article = Article.find(params[:article_id])
    @favorite = Favorite.find_by(user_id: current_user.id, article_id: params[:article_id])
    @favorite.destroy
    @article.reload
    # favorite = Favorite.find_by(user_id: current_user.id, article_id: params[:article_id])
    # favorite.destroy
    # @favorites = Favorite.where(article_id: params[:article_id])
    # @articles = Article.all
  end
end
