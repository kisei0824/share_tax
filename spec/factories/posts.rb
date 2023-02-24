FactoryBot.define do
  factory :post do
    category {  }
    title { '簿記について' }
    description  { 'テスト' }
    user
  end
end