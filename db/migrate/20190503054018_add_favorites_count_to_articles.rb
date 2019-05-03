class AddFavoritesCountToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :favorites_count, :integer
  end
end
