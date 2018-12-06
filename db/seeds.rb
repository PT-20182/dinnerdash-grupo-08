# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    User.create! :username => 'MasterYoda', :full_name => 'TheMasterHasNoName', :email => 'AngryIamnot@starwars.com', :password => 'yoda123', :password_confirmation => 'yoda123', :admin => false
    User.create! :username => 'DarthVader', :full_name => 'Anakin Skywalker', :email => 'Iamyourfather@starwars.com', :password => 'darkforce', :password_confirmation => 'darkforce', :admin => false
    User.create! :username => 'TheChosenOne', :full_name => 'Luke Skywalker' , :email => 'Ihatemyfather@starwars.com', :password => 'luke123', :password_confirmation => 'luke123', :admin => true

    Situation.create(description: 'pendente')
    Situation.create(description: 'entregue')
    Situation.create(description: 'cancelado')

Meal1 = Meal.create(name: 'yakisoba',description: 'Feito com varios vegetais e altas paradas', price: 10.5, available: true)
    Meal.create(name: 'brigadeiro',description: 'Chocolate com Leite em Po MUITO BOM', price: 1.5, available: true)
    Meal.create(name: 'Super Banana',description: 'Banana dos país das Bananeiras', price: 2.5, available: true)

    Meal1.image.attach(io: File.open(Rails.root.join('app/assets/images/Make-meals-healthy-interesting.jpg')), filename: 'Make-meals-healthy.jpg', content_type: 'image/jpg')
