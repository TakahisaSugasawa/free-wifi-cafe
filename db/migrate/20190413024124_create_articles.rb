class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :store_name ,null: false, default: ''
      t.text :adress ,null: false, default: ''
      t.string :area ,null: false, default: ''
      t.string :station 
      t.text :access 
      t.text :wifi ,null: false, default: ''
      t.text :plug ,null: false, default: ''
      t.text :business_hours ,null: false, default: ''
      t.text :regular_holiday 
      t.string :phone 
      t.text :url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
