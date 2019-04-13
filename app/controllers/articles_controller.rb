class ArticlesController < ApplicationController
  # get /articles/new
  def new
    
  end
  
  # post /articles
  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.save
    # logger.debug @article.errors.inspect
    redirect_to @article
  end
  
  # get /article/:id
  def show
    @article = Article.find(params[:id])
  end
  
  
  def index
    @articles = Article.all
  end
  
  
  #ストロングパラメータで指定したキーの値を受け取ることを許可
  private
    def article_params
      params.require(:article).permit(:store_name, :adress, :access, :area,
                              :station, :access, :wifi, :plug, :business_hours,
                              :regular_holiday, :phone, :url)
    end
end
