class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :store_name, presence: true
  mount_uploader :image, ImageUploader #Articleモデルとアップローダーを紐づける    
end
