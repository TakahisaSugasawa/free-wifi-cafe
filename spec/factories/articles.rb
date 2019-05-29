FactoryBot.define do
  factory :article do
    store_name "テストカフェ"
    adress "住所１"
    access "住所１より徒歩５分"
    wifi "あり"
    plug "あり"
    business_hours "10時から22時まで"
    regular_holiday "毎週火曜日"
    phone "03-xxxx-xxxx"
    url "test.com"
    city_id "1"
    association :user, factory: :admin
  end
end
