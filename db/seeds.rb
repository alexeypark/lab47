cpus_category = Category.create(name: 'CPUs')
motherboards_category = Category.create(name: 'Motherboards')
ram_category = Category.create(name: 'RAM')
hdd_category = Category.create(name: 'HDDs')

fixtures_category = Category.create(name: 'Fixtures')

cpu = Product.create(title_en: 'Intel Core i7', title_ru: 'Интел Коэ ай7' ,price: 300, description: Faker::Lorem.paragraph, category: cpus_category, image: File.open(Dir.glob(File.join(Rails.root,'app', 'assets', 'images', 'fixtures', '*')).sample))

ram = Product.create(title_en: '4GB DDR3 RAM', title_ru: '4ГБ ДДР3 РАМ' ,price: 40, description: Faker::Lorem.paragraph, category: ram_category, image: File.open(Dir.glob(File.join(Rails.root,'app', 'assets', 'images', 'fixtures', '*')).sample))

hdd = Product.create(title_en: '1TB Seagate HDD', title_ru: '1ТБ Сигейт ХДД' ,price: 60, description: Faker::Lorem.paragraph, category: hdd_category, image: File.open(Dir.glob(File.join(Rails.root,'app', 'assets', 'images', 'fixtures', '*')).sample))

mb = Product.create(title_en: 'Asus P5Q3', title_ru: 'Эйсус П5КЬЮ3' ,price: 120, description: Faker::Lorem.paragraph, category: motherboards_category, image: File.open(Dir.glob(File.join(Rails.root,'app', 'assets', 'images', 'fixtures', '*')).sample))

50.times do
  Product.create(title_en: Faker::Commerce.product_name,
                 title_ru: "Парампампам#{rand(500)}",
                 price: Faker::Commerce.price,
                 description: Faker::Lorem.paragraph,
                 category: fixtures_category,
                 image: File.open(Dir.glob(File.join(Rails.root,'app', 'assets', 'images', 'fixtures', '*')).sample))
end

user = User.create(name: 'John Doe', email: 'johndoe@example.com', password: '12345678', password_confirmation: '12345678', avatar: File.open(File.join(Rails.root,'app', 'assets', 'images', 'avatar', 'avatar.jpg')) )
admin_user = User.create(name: 'Admin', email: 'admin@example.com', password: 'adminadmin', password_confirmation: 'adminadmin', admin: true, avatar: File.open(File.join(Rails.root,'app', 'assets', 'images', 'avatar', 'avatar.jpg')) )