require 'open-uri'
require 'nokogiri'
require 'csv'


CSV.open("store_information.csv", "w") do |csv|
    # スクレイピング先のURL
  url = 'https://dengen-cafe.com/archives/20909.html'
  
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  
  # htmlをパース(解析)してオブジェクトを作成
  doc = Nokogiri::HTML.parse(html, nil, charset)
  
  # doc.css('#middlecolumn').each do |node|
    #middlecolumn > article:nth-child(22)
    # middlecolumn > article:nth-child(7)
    store_name = doc.css('#middlecolumn > article:nth-child(7) > table >  tr:nth-child(1) > td').text
    adress = doc.css('#address').text
    access = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(3) > td').text
    wifi = doc.css('#middlecolumn > article:nth-child(22) > table > tr:nth-child(6) > td').text
    plug = doc.css('#middlecolumn > article:nth-child(22) > table  > tr:nth-child(1) > td:nth-child(2)').text
    business_hours = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(5) > td').text
    regular_holiday = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(6) > td').text
    url = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(7) > td').text
    phone = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(4) > td').text
    user_id = '13'
    city_id = '36'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  # end
end