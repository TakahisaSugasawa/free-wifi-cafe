class Article < ApplicationRecord
  belongs_to :user
  validates :store_name, presence: true

end
