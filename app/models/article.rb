class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :store_name, presence: true

end
