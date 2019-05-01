class RemoveAreaFromArticles < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :area, :string
  end
end
