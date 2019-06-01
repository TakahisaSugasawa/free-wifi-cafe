require 'csv'

CSV.foreach('store_information.csv') do |row|
  Article.create(store_name: row[0], adress: row[1], access: row[2], wifi: row[3], plug: row[4], business_hours: row[5], regular_holiday: row[6], url: row[7], phone: row[8], user_id: row[9], city_id: row[10])
end
