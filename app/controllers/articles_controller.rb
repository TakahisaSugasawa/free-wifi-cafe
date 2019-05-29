class ArticlesController < ApplicationController
  # 管理者のみ投稿・編集・削除することができる
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]

  # get /articles/new
  def new
    @article = Article.new
  end

  # post /articles
  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      redirect_to @article
      flash[:notice] = "記事が投稿されました。"
    else
      render :new
      flash[:alert] = "投稿に失敗しました。"
    end
  end

  # get /article/:id
  def show
    @article = Article.find(params[:id])
    @city = City.find(@article.city_id) #登録されたcity_idを元にCityオブジェクトを検索
    @comment = Comment.new #コメント投稿フォーム用に空のオブジェクトを作成
    @favorite = Favorite.find_by(user_id: current_user.id, article_id: params[:id]) if user_signed_in?
  end

  # get /articles
  def index
    # 複数の単語を複数のカラムに対して検索
    words = params[:q].delete(:store_name) if params[:q].present?
    if words.present?
      params[:q][:groupings] = []
      words.split(/[ 　]/).each_with_index do |word, i| #全角空白と半角空白で切って、単語ごとに処理
        params[:q][:groupings][i] = { store_name_or_access_cont: word }
      end
    end
    # 検索オブジェクト
    @search = Article.ransack(params[:q])
    # 検索結果
    @articles = @search.result.page(params[:page]).per(10)
  end

  # get /artcles/:id/edit
  def edit
    @article = Article.find(params[:id])
    @city = City.find(@article.city_id) #登録されたcity_idを元にCityオブジェクトを検索
  end

  # patch /artcles/:id
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
      flash[:notice] = "記事を更新しました。"
    else
      redirect_to edit_article_path(@article)
      flash[:alert] = "記事の更新に失敗しました。"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      redirect_to articles_path
      flash[:notice] = "記事を削除しました。"
    else
      redirect_to edit_article_path(@article)
      flash[:alert] = "記事の削除に失敗しました。"
    end
  end

  #ストロングパラメータで指定したキーの値を受け取ることを許可
  private

  def article_params
    params.require(:article).permit(:store_name, :adress, :access, :city_id,
                                    :access, :wifi, :plug, :business_hours,
                                    :regular_holiday, :phone, :url, :image, :image_cache, :remove_image)
  end

  def admin_user
    if current_user.nil? || !current_user.admin?
      redirect_to root_url, alert: "権限がないためアクセスできません。"
    end
  end
end
