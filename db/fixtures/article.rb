require "csv"

# SeedFu.quiet = true

CSV.foreach("store_information.csv") do |row|
  Article.seed(:store_name) do |s|
    s.store_name = row[0]
    s.access = row[1]
    s.city_id = row[2]
  end
end
