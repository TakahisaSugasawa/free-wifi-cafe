FactoryBot.define do
  factory :user do
    username  "一般ユーザー"
    email "tester@example.com"
    password  "123456"
  end
  
  factory :admin, class: User do
    username  "管理者"
    email "admin@example.com"
    password  "123456"
    admin true
  end
  
end
