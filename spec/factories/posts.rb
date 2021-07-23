FactoryBot.define do
  factory :post do
    tax { 'テスト' }
    title { 'テストをかく' }
    description  { 'RspecCapybaraFactoryBotを準備する' }
    user
  end
end