class AddCityIdToArticles < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :city, foreign_key: true
  end
end
