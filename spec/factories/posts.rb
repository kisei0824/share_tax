FactoryBot.define do
  factory :post do
    title { 'テスト' }
    description  { 'テスト' }
    user
  end
end