FactoryBot.define do
  factory :article do
    store_name  "テスト"
    association :user
  end
end