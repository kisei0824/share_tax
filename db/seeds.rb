require "csv"

CSV.foreach('db/category.csv') do |row|
  Category.create(:id => row[0], :item => row[1], :ancestry => row[2])
end 