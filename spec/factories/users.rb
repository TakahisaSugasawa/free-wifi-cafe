FactoryBot.define do
  factory :user do
    username  "takahisa"
    email "tester@example.com"
    # sequence(:email) {|n|"tester#{n}@example.com"}
    password  "123456"
  end
  
  factory :admin, class: User do
    username  "管理者"
    email "admin@example.com"
    # sequence(:email) {|n|"tester#{n}@example.com"}
    password  "123456"
    admin true
  end
  
end
