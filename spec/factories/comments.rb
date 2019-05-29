FactoryBot.define do
  factory :comment do
    title "テストコメント"
    content "コメントを投稿"
    association :user, factory: :admin
    association :article
  end
end
