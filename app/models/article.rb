class Article < ApplicationRecord
  belongs_to :user
  has_many :commtents, dependent: :destroy
  validates :store_name, presence: true

end
