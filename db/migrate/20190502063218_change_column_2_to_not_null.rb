class ChangeColumn2ToNotNull < ActiveRecord::Migration[5.0]
  def up
    change_column :articles, :store_name,:string, null: true
    change_column :articles, :wifi,:text, null: true
    change_column :articles, :plug,:text, null: true
    change_column :articles, :business_hours,:text, null: true
    change_column :articles, :regular_holiday,:text, null: true
    change_column :comments, :content,:text, null: true
  end

  def down
    change_column :articles, :store_name,:string, null: false
    change_column :articles, :wifi,:text, null: false
    change_column :articles, :plug,:text, null: false
    change_column :articles, :business_hours,:text, null: false
    change_column :articles, :regular_holiday,:text, null: false
    change_column :comments, :content,:text, null: false
  end
end
