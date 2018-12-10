# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    Situation.create!(description: 'pendente')
    Situation.create!(description: 'entregue')
    Situation.create!(description: 'cancelado')

    Category.create!(name: 'Saladas')
    Category.create!(name: 'Massas')
    Category.create!(name: 'Pratos Principais')
    Category.create!(name: 'Guarnições')
    Category.create!(name: 'Bebidas')

meal1 = Meal.create!(name: 'yakisoba',description: 'Feito com varios vegetais e altas paradas', price: 10.5, available: true, category_id: Category.find_by(name:"Saladas").id)
Meal.create!(name: 'brigadeiro',description: 'Chocolate com Leite em Po MUITO BOM', price: 1.5, available: true, category_id: Category.find_by(name:"Guarnições").id)
Meal.create!(name: 'Super Banana',description: 'Banana dos país das Bananeiras', price: 2.5, available: true, category_id: Category.find_by(name:"Bebidas").id)

    meal1.image.attach(io: File.open(Rails.root.join('app/assets/images/Make-meals-healthy-interesting.jpg')), filename: 'Make-meals-healthy.jpg', content_type: 'image/jpg')



User.create!(email: "admin@user.com", username: "admin",
            full_name: "ademir", password: "admin123", role: :admin)
User.create!(email: "user@user.com", username: "user",
            full_name: "user da silva", password: "user123", role: :user)
User.create!(email: "tobedeleted@user.com", username: "tobedeleted",
            full_name: "tobedeleted dos santos", password: "tobedeleted123", role: :user)


 Order.create!(price: 200.00, user_id:1, situation_id:1)
 Order.create!(price: 110.00, user_id:2, situation_id:2)
 Order.create!(price: 390.00, user_id:3, situation_id:3)


OrderMeal.create!(quantity: 3, order_id:Order.find_by(price:110.00).id, meal_id:Meal.find_by(name:"yakisoba").id)
OrderMeal.create!(quantity: 4, order_id:Order.find_by(price:200.00).id, meal_id:Meal.find_by(name:"brigadeiro").id)
OrderMeal.create!(quantity: 1, order_id:Order.find_by(price:390.00).id, meal_id:Meal.find_by(name:"Super Banana").id)
