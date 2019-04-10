class ChangeColumnToUser < ActiveRecord::Migration[5.0]
   # 変更内容
  def up
    change_column :users, :username, :string, null: false, default: ""
    # add_index :users, :username
  end

  # 変更前の状態
  def down
    change_column :users, :username, :string
    # add_index :users, :username,                 unique: true
  end 
end
