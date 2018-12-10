# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create!(name: 'Saladas')
Category.create!(name: 'Massas')
Category.create!(name: 'Pratos Principais')
Category.create!(name: 'Guarnições')
Category.create!(name: 'Bebidas')
Situation.create!(description: 'pendente')
Situation.create!(description: 'entregue')
Situation.create!(description: 'cancelado')


User.create!(email: "admin@user.com", username: "admin", 
            full_name: "ademir", password: "admin123", role: :admin)
User.create!(email: "user@user.com", username: "user", 
            full_name: "user da silva", password: "user123", role: :user)
User.create!(email: "tobedeleted@user.com", username: "tobedeleted", 
            full_name: "tobedeleted dos santos", password: "tobedeleted123", role: :user)
   
Meal1 = Meal.create!(name: 'yakisoba',description: 'Feito com varios vegetais e altas paradas', price: 10.5, available: false, category_id: 2)
Meal.create!(name: 'brigadeiro',description: 'Chocolate com Leite em Po MUITO BOM', price: 1.5, available: true, category_id: 1)
Meal.create!(name: 'Super Banana',description: 'Banana dos país das Bananeiras', price: 2.5, available: true, category_id: 4)
Meal.create!(name: 'linguissa',description: 'talvez seja carne', price: 2.5, available: true, category_id: 5)
Meal.create!(name: 'suco de tamarindo',description: 'com gosto de groselha', price: 2.5, available: true, category_id: 5)
Meal.create!(name: 'suco de caixinha',description: 'saudavel', price: 2.5, available: true, category_id: 5)
Meal.create!(name: 'suco que nao eh de caixinha',description: 'tbm saudavel', price: 2.5, available: true, category_id: 5)

Meal1.image.attach(io: File.open(Rails.root.join('app/assets/images/Make-meals-healthy-interesting.jpg')), filename: 'Make-meals-healthy.jpg', content_type: 'image/jpg')
