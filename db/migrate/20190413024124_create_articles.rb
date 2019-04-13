class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :store_name ,null: false
      t.text :adress ,null: false
      t.string :area ,null: false
      t.string :station 
      t.text :access 
      t.text :wifi ,null: false
      t.text :plug ,null: false
      t.text :business_hours ,null: false
      t.text :regular_holiday ,null: false
      t.string :phone 
      t.text :url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
