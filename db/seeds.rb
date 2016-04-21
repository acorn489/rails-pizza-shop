# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
seed Pizza, {name: "Fried Tomatoes", price: 7.89, image: "fried-tomatoes.jpg"}, {ingredients: "Tomatoes, white cheese, gouda"}
seed Pizza, {name: "Brazilian", ingredients: "Rucola, olives, habaneros, salad", price: 6.89, image: "brazilian-pizza.jpg"}
seed Pizza, {name: "Basic Cheese", ingredients: "Cheese, tomatoes", price: 5.40, image: "basic-cheese.jpg"}
seed Pizza, {name: "Diabolo", ingredients: "Habaneros, salami, gouda, tomatoes", price: 6.39, image: "diabolo.jpg"}
seed User, {name: 'HungryUser123', email: 'user@web.de'}, {password: '12341234', password_confirmation: '12341234'}

