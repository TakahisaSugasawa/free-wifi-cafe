require "csv"

CSV.foreach('store_information.csv') do |row|
  Article.create(store_name: row[0], access: row[1], city_id: row[2])
end