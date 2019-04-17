class AddTitleToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :title, :string
  end
end
