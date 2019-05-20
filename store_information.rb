require 'open-uri'
require 'nokogiri'
require 'csv'


CSV.open("store_information.csv", "w") do |csv|
  
  #千代田区の店舗
  urls = [
    'https://dengen-cafe.com/archives/26531.html',
    'https://dengen-cafe.com/archives/26256.html',
    'https://dengen-cafe.com/archives/25518.html',
    'https://dengen-cafe.com/archives/25670.html',
    'https://dengen-cafe.com/archives/25516.html',
    'https://dengen-cafe.com/archives/24732.html',
    'https://dengen-cafe.com/archives/24718.html',
    'https://dengen-cafe.com/archives/10463.html',
    'https://dengen-cafe.com/archives/24684.html',
    'https://dengen-cafe.com/archives/22639.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '2'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #中央区の店舗
  urls = [
    'https://dengen-cafe.com/archives/26532.html',
    'https://dengen-cafe.com/archives/25339.html',
    'https://dengen-cafe.com/archives/25324.html',
    'https://dengen-cafe.com/archives/24959.html',
    'https://dengen-cafe.com/archives/24779.html',
    'https://dengen-cafe.com/archives/24090.html',
    'https://dengen-cafe.com/archives/22513.html',
    'https://dengen-cafe.com/archives/22512.html',
    'https://dengen-cafe.com/archives/22509.html',
    'https://dengen-cafe.com/archives/22514.html',
    'https://dengen-cafe.com/archives/21977.html',
    'https://dengen-cafe.com/archives/21934.html',
    'https://dengen-cafe.com/archives/21918.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '12'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #港区の店舗
  urls = [
    'https://dengen-cafe.com/archives/25949.html',
    'https://dengen-cafe.com/archives/25839.html',
    'https://dengen-cafe.com/archives/25832.html',
    'https://dengen-cafe.com/archives/25432.html',
    'https://dengen-cafe.com/archives/25417.html',
    'https://dengen-cafe.com/archives/24953.html',
    'https://dengen-cafe.com/archives/24282.html',
    'https://dengen-cafe.com/archives/21572.html',
    'https://dengen-cafe.com/archives/19790.html',
    'https://dengen-cafe.com/archives/18659.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '22'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #新宿区の店舗
  urls = [
    'https://dengen-cafe.com/archives/26425.html',
    'https://dengen-cafe.com/archives/26423.html',
    'https://dengen-cafe.com/archives/25720.html',
    'https://dengen-cafe.com/archives/24262.html',
    'https://dengen-cafe.com/archives/22406.html',
    'https://dengen-cafe.com/archives/21257.html',
    'https://dengen-cafe.com/archives/21243.html',
    'https://dengen-cafe.com/archives/20992.html',
    'https://dengen-cafe.com/archives/20025.html',
    'https://dengen-cafe.com/archives/17533.html',
    'https://dengen-cafe.com/archives/17753.html',
    'https://dengen-cafe.com/archives/17527.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '32'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #文京区の店舗
  urls = [
    'https://dengen-cafe.com/archives/20610.html',
    'https://dengen-cafe.com/archives/19674.html',
    'https://dengen-cafe.com/archives/19266.html',
    'https://dengen-cafe.com/archives/18745.html',
    'https://dengen-cafe.com/archives/17635.html',
    'https://dengen-cafe.com/archives/16419.html',
    'https://dengen-cafe.com/archives/10513.html',
    'https://dengen-cafe.com/archives/2521.html',
    'https://dengen-cafe.com/archives/1752.html',
    'https://dengen-cafe.com/archives/491.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '42	'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #台東区の店舗
  urls = [
    'https://dengen-cafe.com/archives/24692.html',
    'https://dengen-cafe.com/archives/24688.html',
    'https://dengen-cafe.com/archives/13290.html',
    'https://dengen-cafe.com/archives/24493.html',
    'https://dengen-cafe.com/archives/22244.html',
    'https://dengen-cafe.com/archives/22230.html',
    'https://dengen-cafe.com/archives/20933.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '52	'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #隅田区の店舗
  urls = [
    'https://dengen-cafe.com/archives/24967.html',
    'https://dengen-cafe.com/archives/24378.html',
    'https://dengen-cafe.com/archives/21501.html',
    'https://dengen-cafe.com/archives/20775.html',
    'https://dengen-cafe.com/archives/18742.html',
    'https://dengen-cafe.com/archives/17073.html',
    'https://dengen-cafe.com/archives/16691.html',
    'https://dengen-cafe.com/archives/11894.html',
    'https://dengen-cafe.com/archives/8268.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '62	'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #江東区
  urls = [
    'https://dengen-cafe.com/archives/25955.html',
    'https://dengen-cafe.com/archives/22873.html',
    'https://dengen-cafe.com/archives/22227.html',
    'https://dengen-cafe.com/archives/19578.html',
    'https://dengen-cafe.com/archives/19165.html',
    'https://dengen-cafe.com/archives/18264.html',
    'https://dengen-cafe.com/archives/17704.html',
    'https://dengen-cafe.com/archives/16676.html',
    'https://dengen-cafe.com/archives/12805.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '72	'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #品川区
  urls = [
    'https://dengen-cafe.com/archives/24260.html',
    'https://dengen-cafe.com/archives/23767.html',
    'https://dengen-cafe.com/archives/23049.html',
    'https://dengen-cafe.com/archives/22756.html',
    'https://dengen-cafe.com/archives/20617.html',
    'https://dengen-cafe.com/archives/19318.html',
    'https://dengen-cafe.com/archives/18202.html',
    'https://dengen-cafe.com/archives/16049.html',
    'https://dengen-cafe.com/archives/9012.html',
    'https://dengen-cafe.com/archives/1088.html',
    'https://dengen-cafe.com/archives/1335.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '82	'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #目黒区
  urls = [
    'https://dengen-cafe.com/archives/25841.html',
    'https://dengen-cafe.com/archives/24904.html',
    'https://dengen-cafe.com/archives/23015.html',
    'https://dengen-cafe.com/archives/19542.html',
    'https://dengen-cafe.com/archives/18655.html',
    'https://dengen-cafe.com/archives/15631.html',
    'https://dengen-cafe.com/archives/15247.html',
    'https://dengen-cafe.com/archives/11577.html',
    'https://dengen-cafe.com/archives/11265.html',
    'https://dengen-cafe.com/archives/7436.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '92	'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #大田区
  urls = [
    'https://dengen-cafe.com/archives/25455.html',
    'https://dengen-cafe.com/archives/24901.html',
    'https://dengen-cafe.com/archives/20844.html',
    'https://dengen-cafe.com/archives/20326.html',
    'https://dengen-cafe.com/archives/6858.html',
    'https://dengen-cafe.com/archives/22545.html',
    'https://dengen-cafe.com/archives/20322.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '102	'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
    #世田谷区の店舗
  urls = [
    'https://dengen-cafe.com/archives/20909.html',
    'https://dengen-cafe.com/archives/25593.html',
    'https://dengen-cafe.com/archives/25286.html',
    'https://dengen-cafe.com/archives/25594.html',
    'https://dengen-cafe.com/archives/24915.html',
    'https://dengen-cafe.com/archives/23936.html',
    'https://dengen-cafe.com/archives/21534.html',
    'https://dengen-cafe.com/archives/20881.html',
    'https://dengen-cafe.com/archives/19519.html',
    'https://dengen-cafe.com/archives/12834.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '112'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #渋谷区
  urls = [
    'https://dengen-cafe.com/archives/26552.html',
    'https://dengen-cafe.com/archives/25857.html',
    'https://dengen-cafe.com/archives/25105.html',
    'https://dengen-cafe.com/archives/25102.html',
    'https://dengen-cafe.com/archives/8433.html',
    'https://dengen-cafe.com/archives/24437.html',
    'https://dengen-cafe.com/archives/23073.html',
    'https://dengen-cafe.com/archives/22791.html',
    'https://dengen-cafe.com/archives/22300.html',
    'https://dengen-cafe.com/archives/22304.html',
    'https://dengen-cafe.com/archives/21371.html',
    'https://dengen-cafe.com/archives/21364.html',
    'https://dengen-cafe.com/archives/20907.html',
    'https://dengen-cafe.com/archives/20789.html',
    'https://dengen-cafe.com/archives/20702.html',
    'https://dengen-cafe.com/archives/20007.html',
    'https://dengen-cafe.com/archives/19657.html',
    'https://dengen-cafe.com/archives/19451.html',
    'https://dengen-cafe.com/archives/18810.html',
    'https://dengen-cafe.com/archives/18631.html',
    'https://dengen-cafe.com/archives/18223.html',
    'https://dengen-cafe.com/archives/16399.html',
    'https://dengen-cafe.com/archives/15592.html',
    'https://dengen-cafe.com/archives/11883.html'
    
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '122'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #中野区
  urls = [
    'https://dengen-cafe.com/archives/24452.html',
    'https://dengen-cafe.com/archives/24281.html',
    'https://dengen-cafe.com/archives/19732.html',
    'https://dengen-cafe.com/archives/19630.html',
    'https://dengen-cafe.com/archives/18653.html',
    'https://dengen-cafe.com/archives/17890.html',
    'https://dengen-cafe.com/archives/8708.html',
    'https://dengen-cafe.com/archives/5961.html',
    'https://dengen-cafe.com/archives/16921.html',
    'https://dengen-cafe.com/archives/7840.html',
    'https://dengen-cafe.com/archives/6797.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '132'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #杉並区
  urls = [
    'https://dengen-cafe.com/archives/25954.html',
    'https://dengen-cafe.com/archives/25790.html',
    'https://dengen-cafe.com/archives/25459.html',
    'https://dengen-cafe.com/archives/23438.html',
    'https://dengen-cafe.com/archives/20891.html',
    'https://dengen-cafe.com/archives/19854.html',
    'https://dengen-cafe.com/archives/19111.html',
    'https://dengen-cafe.com/archives/18308.html',
    'https://dengen-cafe.com/archives/16853.html',
    'https://dengen-cafe.com/archives/11085.html',
    'https://dengen-cafe.com/archives/10181.html',
    'https://dengen-cafe.com/archives/10080.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '142'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #豊島区
  urls = [
    'https://dengen-cafe.com/archives/25948.html',
    'https://dengen-cafe.com/archives/25669.html',
    'https://dengen-cafe.com/archives/25460.html',
    'https://dengen-cafe.com/archives/25259.html',
    'https://dengen-cafe.com/archives/13546.html',
    'https://dengen-cafe.com/archives/24377.html',
    'https://dengen-cafe.com/archives/24207.html',
    'https://dengen-cafe.com/archives/23402.html',
    'https://dengen-cafe.com/archives/23136.html',
    'https://dengen-cafe.com/archives/22949.html',
    'https://dengen-cafe.com/archives/23084.html',
    'https://dengen-cafe.com/archives/20076.html',
    'https://dengen-cafe.com/archives/19698.html',
    'https://dengen-cafe.com/archives/19576.html',
    'https://dengen-cafe.com/archives/19388.html',
    'https://dengen-cafe.com/archives/18853.html',
    'https://dengen-cafe.com/archives/18004.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '152'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #北区
  urls = [
    'https://dengen-cafe.com/archives/22768.html',
    'https://dengen-cafe.com/archives/22767.html',
    'https://dengen-cafe.com/archives/21207.html',
    'https://dengen-cafe.com/archives/20968.html',
    'https://dengen-cafe.com/archives/19260.html',
    'https://dengen-cafe.com/archives/19247.html',
    'https://dengen-cafe.com/archives/15178.html',
    'https://dengen-cafe.com/archives/9283.html',
    'https://dengen-cafe.com/archives/7360.html',
    'https://dengen-cafe.com/archives/6759.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '162'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #荒川
  urls = [
    'https://dengen-cafe.com/archives/24154.html',
    'https://dengen-cafe.com/archives/15215.html',
    'https://dengen-cafe.com/archives/8824.html',
    'https://dengen-cafe.com/archives/8286.html',
    'https://dengen-cafe.com/archives/8119.html',
    'https://dengen-cafe.com/archives/2989.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '172'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #板橋
  urls = [
    'https://dengen-cafe.com/archives/25140.html',
    'https://dengen-cafe.com/archives/23408.html',
    'https://dengen-cafe.com/archives/22334.html',
    'https://dengen-cafe.com/archives/22330.html',
    'https://dengen-cafe.com/archives/18784.html',
    'https://dengen-cafe.com/archives/18779.html',
    'https://dengen-cafe.com/archives/13910.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '182'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #練馬
  urls = [
    'https://dengen-cafe.com/archives/24588.html',
    'https://dengen-cafe.com/archives/21277.html',
    'https://dengen-cafe.com/archives/21196.html',
    'https://dengen-cafe.com/archives/20788.html',
    'https://dengen-cafe.com/archives/19645.html',
    'https://dengen-cafe.com/archives/19622.html',
    'https://dengen-cafe.com/archives/18441.html',
    'https://dengen-cafe.com/archives/17789.html',
    'https://dengen-cafe.com/archives/15628.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '192'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #足立
  urls = [
    'https://dengen-cafe.com/archives/22604.html',
    'https://dengen-cafe.com/archives/20936.html',
    'https://dengen-cafe.com/archives/19509.html',
    'https://dengen-cafe.com/archives/19191.html',
    'https://dengen-cafe.com/archives/16700.html',
    'https://dengen-cafe.com/archives/15415.html',
    'https://dengen-cafe.com/archives/14679.html',
    'https://dengen-cafe.com/archives/11275.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '202'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #葛飾区
  urls = [
    'https://dengen-cafe.com/archives/26427.html',
    'https://dengen-cafe.com/archives/25600.html',
    'https://dengen-cafe.com/archives/19299.html',
    'https://dengen-cafe.com/archives/19180.html',
    'https://dengen-cafe.com/archives/15527.html',
    'https://dengen-cafe.com/archives/15410.html',
    'https://dengen-cafe.com/archives/11684.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '212'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #江戸川区
  urls = [
    'https://dengen-cafe.com/archives/25313.html',
    'https://dengen-cafe.com/archives/25314.html',
    'https://dengen-cafe.com/archives/24117.html',
    'https://dengen-cafe.com/archives/23954.html',
    'https://dengen-cafe.com/archives/20508.html',
    'https://dengen-cafe.com/archives/17064.html',
    'https://dengen-cafe.com/archives/11392.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '222'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #八王子市
  urls = [
    'https://dengen-cafe.com/archives/25730.html',
    'https://dengen-cafe.com/archives/22424.html',
    'https://dengen-cafe.com/archives/19599.html',
    'https://dengen-cafe.com/archives/20804.html',
    'https://dengen-cafe.com/archives/19392.html',
    'https://dengen-cafe.com/archives/17189.html',
    'https://dengen-cafe.com/archives/15449.html',
    'https://dengen-cafe.com/archives/15408.html',
    'https://dengen-cafe.com/archives/12029.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '232'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #立川市
  urls = [
    'https://dengen-cafe.com/archives/22193.html',
    'https://dengen-cafe.com/archives/21624.html',
    'https://dengen-cafe.com/archives/21134.html',
    'https://dengen-cafe.com/archives/19226.html',
    'https://dengen-cafe.com/archives/17095.html',
    'https://dengen-cafe.com/archives/8769.html',
    'https://dengen-cafe.com/archives/8746.html',
    'https://dengen-cafe.com/archives/7822.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '242'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #武蔵野市
  urls = [
    'https://dengen-cafe.com/archives/25738.html',
    'https://dengen-cafe.com/archives/20704.html',
    'https://dengen-cafe.com/archives/20676.html',
    'https://dengen-cafe.com/archives/19875.html',
    'https://dengen-cafe.com/archives/18831.html',
    'https://dengen-cafe.com/archives/18646.html',
    'https://dengen-cafe.com/archives/18139.html',
    'https://dengen-cafe.com/archives/16752.html',
    'https://dengen-cafe.com/archives/16422.html',
    'https://dengen-cafe.com/archives/1642.html',
    'https://dengen-cafe.com/archives/337.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '252'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #三鷹市
  urls = [
    'https://dengen-cafe.com/archives/26522.html',
    'https://dengen-cafe.com/archives/25739.html',
    'https://dengen-cafe.com/archives/17671.html',
    'https://dengen-cafe.com/archives/13311.html',
    'https://dengen-cafe.com/archives/6036.html',
    'https://dengen-cafe.com/archives/3167.html',
    'https://dengen-cafe.com/archives/1647.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '262'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #青梅市
  urls = [
    'https://dengen-cafe.com/archives/20934.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '272'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #府中市
  urls = [
    'https://dengen-cafe.com/archives/25494.html',
    'https://dengen-cafe.com/archives/24366.html',
    'https://dengen-cafe.com/archives/22312.html',
    'https://dengen-cafe.com/archives/20695.html',
    'https://dengen-cafe.com/archives/19510.html',
    'https://dengen-cafe.com/archives/9322.html',
    'https://dengen-cafe.com/archives/7813.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '282'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #昭島市
  urls = [
    'https://dengen-cafe.com/archives/23061.html',
    'https://dengen-cafe.com/archives/23063.html',
    'https://dengen-cafe.com/archives/23062.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '292'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #調布市
  urls = [
    'https://dengen-cafe.com/archives/24422.html',
    'https://dengen-cafe.com/archives/24402.html',
    'https://dengen-cafe.com/archives/19672.html',
    'https://dengen-cafe.com/archives/15831.html',
    'https://dengen-cafe.com/archives/7057.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '302'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #町田
  urls = [
    'https://dengen-cafe.com/archives/23082.html',
    'https://dengen-cafe.com/archives/19780.html',
    'https://dengen-cafe.com/archives/18904.html',
    'https://dengen-cafe.com/archives/18762.html',
    'https://dengen-cafe.com/archives/17076.html',
    'https://dengen-cafe.com/archives/11111.html',
    'https://dengen-cafe.com/archives/10985.html',
    'https://dengen-cafe.com/archives/10523.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '312'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #小金井市
  urls = [
    'https://dengen-cafe.com/archives/25511.html',
    'https://dengen-cafe.com/archives/23211.html',
    'https://dengen-cafe.com/archives/20896.html',
    'https://dengen-cafe.com/archives/19202.html',
    'https://dengen-cafe.com/archives/7299.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '322'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #小平市(ナシ)
  # urls = [
  #   ''
  #   ]
  # # url = 'https://dengen-cafe.com/archives/20909.html'
  
  # urls.each do |url| 
  #   charset = nil
  #   html = open(url) do |f|
  #     charset = f.charset # 文字種別を取得
  #     f.read # htmlを読み込んで変数htmlに渡す
  #   end
    
  #   # htmlをパース(解析)してオブジェクトを作成
  #   doc = Nokogiri::HTML.parse(html, nil, charset)
  
  # # doc.css('#middlecolumn').each do |node|
  #   #middlecolumn > article:nth-child(22)
  #   # middlecolumn > article:nth-child(7)
  #   store_name = doc.css('#middlecolumn > article:nth-child(7) > table >  tr:nth-child(1) > td').text
  #   adress = doc.css('#address').text
  #   access = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(3) > td').text
  #   wifi = doc.css('#middlecolumn > article:nth-child(22) > table > tr:nth-child(6) > td').text
  #   plug = doc.css('#middlecolumn > article:nth-child(22) > table  > tr:nth-child(1) > td:nth-child(2)').text
  #   business_hours = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(5) > td').text
  #   regular_holiday = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(6) > td').text
  #   url = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(7) > td').text
  #   phone = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(4) > td').text
  #   user_id = '2'
  #   city_id = '332'
    
  #   csv << [store_name,adress,access,wifi,plug,business_hours,
  #   regular_holiday,url,phone,user_id,city_id]
  # end
  
  #日野市
  urls = [
    'https://dengen-cafe.com/archives/20238.html',
    'https://dengen-cafe.com/archives/19232.html',
    'https://dengen-cafe.com/archives/7106.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '342'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #東村山市
  urls = [
    'https://dengen-cafe.com/archives/17288.html',
    'https://dengen-cafe.com/archives/12820.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '352'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #国分寺市
  urls = [
    'https://dengen-cafe.com/archives/19662.html',
    'https://dengen-cafe.com/archives/7059.html',
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '362'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #国立市
  urls = [
    'https://dengen-cafe.com/archives/13292.html',
    'https://dengen-cafe.com/archives/1522.html',
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '372'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #福生市(ナシ)
  # urls = [
  #   'https://dengen-cafe.com/archives/26532.html',
  #   'https://dengen-cafe.com/archives/25339.html',
  #   'https://dengen-cafe.com/archives/25324.html',
  #   ]
  # # url = 'https://dengen-cafe.com/archives/20909.html'
  
  # urls.each do |url| 
  #   charset = nil
  #   html = open(url) do |f|
  #     charset = f.charset # 文字種別を取得
  #     f.read # htmlを読み込んで変数htmlに渡す
  #   end
    
  #   # htmlをパース(解析)してオブジェクトを作成
  #   doc = Nokogiri::HTML.parse(html, nil, charset)
  
  # # doc.css('#middlecolumn').each do |node|
  #   #middlecolumn > article:nth-child(22)
  #   # middlecolumn > article:nth-child(7)
  #   store_name = doc.css('#middlecolumn > article:nth-child(7) > table >  tr:nth-child(1) > td').text
  #   adress = doc.css('#address').text
  #   access = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(3) > td').text
  #   wifi = doc.css('#middlecolumn > article:nth-child(22) > table > tr:nth-child(6) > td').text
  #   plug = doc.css('#middlecolumn > article:nth-child(22) > table  > tr:nth-child(1) > td:nth-child(2)').text
  #   business_hours = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(5) > td').text
  #   regular_holiday = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(6) > td').text
  #   url = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(7) > td').text
  #   phone = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(4) > td').text
  #   user_id = '2'
  #   city_id = '382'
    
  #   csv << [store_name,adress,access,wifi,plug,business_hours,
  #   regular_holiday,url,phone,user_id,city_id]
  # end
  
  #狛江市
  urls = [
    'https://dengen-cafe.com/archives/21010.html',
    'https://dengen-cafe.com/archives/23099.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '392'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #東大和市
  urls = [
    'https://dengen-cafe.com/archives/11782.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '402'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #清瀬市
  urls = [
    'https://dengen-cafe.com/archives/16842.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '412'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #東久留米市
  urls = [
    'https://dengen-cafe.com/archives/18894.html',
    'https://dengen-cafe.com/archives/7020.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '422'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  # #武蔵村山市
  # urls = [
  #   'https://dengen-cafe.com/archives/17288.html'
  #   ]
  # # url = 'https://dengen-cafe.com/archives/20909.html'
  
  # urls.each do |url| 
  #   charset = nil
  #   html = open(url) do |f|
  #     charset = f.charset # 文字種別を取得
  #     f.read # htmlを読み込んで変数htmlに渡す
  #   end
    
  #   # htmlをパース(解析)してオブジェクトを作成
  #   doc = Nokogiri::HTML.parse(html, nil, charset)
  
  # # doc.css('#middlecolumn').each do |node|
  #   #middlecolumn > article:nth-child(22)
  #   # middlecolumn > article:nth-child(7)
  #   store_name = doc.css('#middlecolumn > article:nth-child(7) > table >  tr:nth-child(1) > td').text
  #   adress = doc.css('#address').text
  #   access = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(3) > td').text
  #   wifi = doc.css('#middlecolumn > article:nth-child(22) > table > tr:nth-child(6) > td').text
  #   plug = doc.css('#middlecolumn > article:nth-child(22) > table  > tr:nth-child(1) > td:nth-child(2)').text
  #   business_hours = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(5) > td').text
  #   regular_holiday = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(6) > td').text
  #   url = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(7) > td').text
  #   phone = doc.css('#middlecolumn > article:nth-child(7) > table > tr:nth-child(4) > td').text
  #   user_id = '2'
  #   city_id = '432'
    
  #   csv << [store_name,adress,access,wifi,plug,business_hours,
  #   regular_holiday,url,phone,user_id,city_id]
  # end
  
  #多摩市
  urls = [
    'https://dengen-cafe.com/archives/21913.html',
    'https://dengen-cafe.com/archives/21544.html',
    'https://dengen-cafe.com/archives/20591.html',
    'https://dengen-cafe.com/archives/19626.html',
    'https://dengen-cafe.com/archives/17924.html',
    'https://dengen-cafe.com/archives/10116.html',
    'https://dengen-cafe.com/archives/3749.html',
    'https://dengen-cafe.com/archives/3610.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '442'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #稲城市
  urls = [
    'https://dengen-cafe.com/archives/24921.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '452'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #羽村市
  urls = [
    'https://dengen-cafe.com/archives/24933.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '462'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #あきるの市
  urls = [
    'https://dengen-cafe.com/archives/19463.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '472'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
  
  #西東京市
  urls = [
    'https://dengen-cafe.com/archives/22565.html',
    'https://dengen-cafe.com/archives/21739.html'
    ]
  # url = 'https://dengen-cafe.com/archives/20909.html'
  
  urls.each do |url| 
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
    user_id = '2'
    city_id = '482'
    
    csv << [store_name,adress,access,wifi,plug,business_hours,
    regular_holiday,url,phone,user_id,city_id]
  end
end