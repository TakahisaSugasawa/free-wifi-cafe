class City < ApplicationRecord
  has_many :articles, dependent: :destroy
end
