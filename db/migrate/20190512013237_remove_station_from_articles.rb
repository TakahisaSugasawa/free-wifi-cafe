class RemoveStationFromArticles < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :station, :string
  end
end
