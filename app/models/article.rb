class Article < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates :store_name, presence: true,uniqueness: true
  mount_uploader :image, ImageUploader #Articleモデルとアップローダーを紐づける    
  
  #ユーザーが既に記事に対してお気に入りしているかどうか確認する
  def favorite_user(user_id)
   favorites.find_by(user_id: user_id)
  end
end
