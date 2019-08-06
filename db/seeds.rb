# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = AdminCreateService.new.call
puts  "admin email: " << admin.email # only for display

PRODUCT_COUNT = 20
MAX_CATEGORIES = 3
CATEGORIES = Faker::Base.fetch_all('commerce.department').map do |title|
  Category.create(title: title)
end

PRODUCT_COUNT.times do |item|
  title = ' '
  loop do
    title = Faker::Commerce.product_name
    break unless Product.exists?(title: title) #test if product with that title exist if it does CONTINUE if it does not then break
  end
  product = Product.new(
    title: title,
    description: Faker::Lorem.sentences,
    price: Faker::Commerce.price
  )
  num_categories = 1 + rand(MAX_CATEGORIES)
  product.categories =CATEGORIES.sample(num_categories)
  product.save
  puts product.title;
end
