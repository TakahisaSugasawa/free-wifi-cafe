FactoryBot.define do
  factory :user do
    username  "hogehoge"
    email "tester@example.com"
    sequence(:email) {|n|"tester#{n}@example.com"}
    password  "test123456"
    password_confirmation "test123456"
  end
end
