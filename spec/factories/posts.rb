FactoryBot.define do
  factory :post do
    category { '会計' }
    title { '簿記について' }
    description  { 'テスト' }
    user
  end
end