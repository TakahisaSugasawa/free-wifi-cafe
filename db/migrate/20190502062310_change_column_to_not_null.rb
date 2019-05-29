class ChangeColumnToNotNull < ActiveRecord::Migration[5.0]
  def up
    change_column :articles, :adress, :string, null: true
  end

  def down
    change_column :articles, :adress, :string, null: false
  end
end
