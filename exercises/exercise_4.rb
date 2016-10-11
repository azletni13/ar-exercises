require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

store = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

store = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

@mens_stores = Store.where(mens_apparel: true).pluck(:name, :annual_revenue)

@mens_stores.each do |row|
  pp row
end

@womens_and_under_1M = Store.where("annual_revenue < ?", 1000000).where(womens_apparel: true).pluck(:name, :annual_revenue)

@womens_and_under_1M.each do |row|
  pp row
end