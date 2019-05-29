class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :article, counter_cache: :favorites_count
end
