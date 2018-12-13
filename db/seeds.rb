
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
Category.create!(name: 'Molhos')
Category.create!(name: 'Pratos principais')
Category.create!(name: 'Guarnições')
Category.create!(name: 'Bebidas')

meal1 = Meal.create!(name: 'Salada de Macarrão e Atum',description: 'Possui macarrão, atum, milho, pimentão, cebola e maionese.', price: 12.00, available: true, category_id: Category.find_by(name:"Saladas").id)
meal2 = Meal.create!(name: 'Salada de Atum Light',description: 'Possui alface, abacate, milho, atum, cebola e alho..', price: 12.00, available: true, category_id: Category.find_by(name:"Saladas").id)
meal3 = Meal.create!(name: 'Salada de Abacaxi',description: 'Possui abacaxi, milho, queijo feta, agrião, rúcula e tomate cereja.', price: 12.00, available: true, category_id: Category.find_by(name:"Saladas").id)
meal4 = Meal.create!(name: 'Salada de Macarrão Parafuso',description: 'Possui macarrão, frango, milho, alcaparras e algumas frutas.', price: 12.00, available: true, category_id: Category.find_by(name:"Saladas").id)
meal5 = Meal.create!(name: 'Molho de iogurte',description: 'Possui azeite, iogurte, alho, limão, hortelã e salsinha.', price: 5.0, available: true, category_id: Category.find_by(name:"Molhos").id)
meal6 = Meal.create!(name: 'Molho de Mostarda',description: 'Possui mostarda, maionese, azeite, limão e alho em pó.', price: 5.0, available: true, category_id: Category.find_by(name:"Molhos").id)
meal7 = Meal.create!(name: 'Molho Vinagrete',description: 'Possui cebola, tomate, limão, pimenta calabresa e sal.', price: 5.0, available: true, category_id: Category.find_by(name:"Molhos").id)
meal8 = Meal.create!(name: 'Molho de Coentro',description: 'Possui coentro, iogurte, limão, alho, azeite e vinagre.', price: 5.0, available: true, category_id: Category.find_by(name:"Molhos").id)
meal9 = Meal.create!(name: 'Strogonoff de Frango',description: 'Possui frango, alho, cebola, azeite, creme de leite e mostarda.', price: 18.00, available: true, category_id: Category.find_by(name:"Pratos principais").id)
meal10 = Meal.create!(name: 'Filé ao Molho Madeira',description: 'Possui filé mignon, vinho tinto, alho e cogumelos.', price: 18.00, available: true, category_id: Category.find_by(name:"Pratos principais").id)
meal11 = Meal.create!(name: 'Parmegiana de Carne',description: 'Possui alcatra, alho, cebola, molho de tomate e queijo mussarela.', price: 18.00, available: true, category_id: Category.find_by(name:"Pratos principais").id)
meal12 = Meal.create!(name: 'Parmegiana de Frango',description: 'Possui frango, alho, cebola, molho de tomate e queijo mussarela.', price: 18.00, available: true, category_id: Category.find_by(name:"Pratos principais").id)
meal13 = Meal.create!(name: 'Purê de Batatas',description: 'Possui batata, manteiga, leite, noz moscada e creme de leite.', price: 12.00, available: true, category_id: Category.find_by(name:"Guarnições").id)
meal14 = Meal.create!(name: 'Batata Frita',description: 'Possui batata, orégano e sal.', price: 12.00, available: true, category_id: Category.find_by(name:"Guarnições").id)
meal15 = Meal.create!(name: 'Farofa de Couve',description: 'Possui couve, cebola, alho, azeite e farinha de mandioca.', price: 12.00, available: true, category_id: Category.find_by(name:"Guarnições").id)
meal16 = Meal.create!(name: 'Farofa de Banana',description: 'Possui banana, bacon, passas, azeite, salsinha e farinha.', price: 12.00, available: true, category_id: Category.find_by(name:"Guarnições").id)
meal17 = Meal.create!(name: 'Suco Natural',description: 'Sucos diversos.', price: 10.00, available: true, category_id: Category.find_by(name:"Bebidas").id)
meal18 = Meal.create!(name: 'Refrigerante Lata',description: 'Refrigerantes diversos em lata.', price: 10.00, available: true, category_id: Category.find_by(name:"Bebidas").id)
meal19 = Meal.create!(name: 'Refrigerante de 2 litros',description: 'Refrigerantes diversos 2 litros.', price: 10.00, available: true, category_id: Category.find_by(name:"Bebidas").id)
meal20 = Meal.create!(name: 'Cerveja Lata',description: 'Cervejas diversas lata.', price: 10.00, available: true, category_id: Category.find_by(name:"Bebidas").id)

meal1.image.attach(io: File.open(Rails.root.join('app/assets/images/saladamacarraoatum.jpg')), filename: 'saladamacarraoatum.jpg', content_type: 'image/jpg')
meal2.image.attach(io: File.open(Rails.root.join('app/assets/images/saladaatumlight.jpg')), filename: 'saladaatumlight.jpg', content_type: 'image/jpg')
meal3.image.attach(io: File.open(Rails.root.join('app/assets/images/saladaabacaxi.jpg')), filename: 'saladaabacaxi.jpg', content_type: 'image/jpg')
meal4.image.attach(io: File.open(Rails.root.join('app/assets/images/saladamacarrao.png')), filename: 'saladamacarrao.png', content_type: 'image/png')
meal5.image.attach(io: File.open(Rails.root.join('app/assets/images/molhoiogurte.jpg')), filename: 'molhoiogurte.jpg', content_type: 'image/jpg')
meal6.image.attach(io: File.open(Rails.root.join('app/assets/images/molhomostarda.jpg')), filename: 'molhomostarda.jpg', content_type: 'image/jpg')
meal7.image.attach(io: File.open(Rails.root.join('app/assets/images/molhovinagrete.jpg')), filename: 'molhovinagrete.jpg', content_type: 'image/jpg')
meal8.image.attach(io: File.open(Rails.root.join('app/assets/images/molhocoentro.jpg')), filename: 'molhocoentro.jpg', content_type: 'image/jpg')
meal9.image.attach(io: File.open(Rails.root.join('app/assets/images/strogonoff.png')), filename: 'strogonoff.png', content_type: 'image/png')
meal10.image.attach(io: File.open(Rails.root.join('app/assets/images/file.jpg')), filename: 'file.jpg', content_type: 'image/jpg')
meal11.image.attach(io: File.open(Rails.root.join('app/assets/images/parmecarne.jpg')), filename: 'parmecarne.jpg', content_type: 'image/jpg')
meal12.image.attach(io: File.open(Rails.root.join('app/assets/images/parmefrango.jpg')), filename: 'parmefrango.jpg', content_type: 'image/jpg')
meal13.image.attach(io: File.open(Rails.root.join('app/assets/images/pure.jpg')), filename: 'pure.jpg', content_type: 'image/jpg')
meal14.image.attach(io: File.open(Rails.root.join('app/assets/images/batata.jpg')), filename: 'batata.jpg', content_type: 'image/jpg')
meal15.image.attach(io: File.open(Rails.root.join('app/assets/images/farofacouve.png')), filename: 'farofacouve.png', content_type: 'image/png')
meal16.image.attach(io: File.open(Rails.root.join('app/assets/images/farofa.jpg')), filename: 'farofa.jpg', content_type: 'image/jpg')
meal17.image.attach(io: File.open(Rails.root.join('app/assets/images/suco.jpeg')), filename: 'suco.jpeg', content_type: 'image/jpeg')
meal18.image.attach(io: File.open(Rails.root.join('app/assets/images/refrilata.png')), filename: 'refrilata.png', content_type: 'image/png')
meal19.image.attach(io: File.open(Rails.root.join('app/assets/images/refri2.png')), filename: 'refri2.png', content_type: 'image/png')
meal20.image.attach(io: File.open(Rails.root.join('app/assets/images/cerveja.jpeg')), filename: 'cerveja.jpeg', content_type: 'image/jpeg')

User.create!(email: "admin@user.com", username: "admin",
        full_name: "ademir", password: "admin123", role: :admin)
User.create!(email: "user@user.com", username: "user",
        full_name: "user da silva", password: "user123", role: :user)
User.create!(email: "tobedeleted@user.com", username: "tobedeleted",
        full_name: "tobedeleted dos santos", password: "tobedeleted123", role: :user)


Order.create!(price: 200.00, user_id:1, situation_id:1)
Order.create!(price: 110.00, user_id:2, situation_id:2)
Order.create!(price: 390.00, user_id:3, situation_id:3)


OrderMeal.create!(quantity: 3, order_id:Order.find_by(price:110.00).id, meal_id:Meal.find_by(name:"Strogonoff de Frango").id)
OrderMeal.create!(quantity: 4, order_id:Order.find_by(price:200.00).id, meal_id:Meal.find_by(name:"Filé ao Molho Madeira").id)
OrderMeal.create!(quantity: 1, order_id:Order.find_by(price:390.00).id, meal_id:Meal.find_by(name:"Batata Frita").id)