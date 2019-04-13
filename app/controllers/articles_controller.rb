class ArticlesController < ApplicationController
  # get /articles/new
  def new
    
  end
  
  # get /articles
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end
  
  private
    def article_params
      params.require(:article).permit(:store_name, :adress, :access, :area,
                              :station, :access, :wifi, :plug, :business_hours,
                              :regular_holiday, :phone, :url)
    end
end
