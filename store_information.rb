require 'open-uri'
require 'nokogiri'
require 'csv'


CSV.open("store_information.csv", "w") do |csv|
    # スクレイピング先のURL
  url = 'https://dengen-cafe.com/archives/category/tokyo/tokyo-shibuya'
  
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  
  # htmlをパース(解析)してオブジェクトを作成
  doc = Nokogiri::HTML.parse(html, nil, charset)
  
  doc.css('article.searchresult').each do |node|
    
    store_name = node.css('h1 a').text
    access = node.css('p.walk').text
    city_id = '36'
    
    csv << [store_name, access,city_id]
  end
end