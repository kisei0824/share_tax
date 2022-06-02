FactoryBot.define do
  factory :post do
    tax { 'テスト' }
    title { '最初の投稿' }
    description  { '最初の投稿' }
    user
  end
end