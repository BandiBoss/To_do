# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Use rake db:reset to reset and re-migrate the database.

Todo.create!(title: 'grocery shopping', notes: 'ramen, eggs, milk, chips')
Todo.create!(title: 'wash the car')
Todo.create!(title: 'enroll in classes', notes: 'CS 61B, EE 16B, Scandinavian 106, Music 35')
Todo.create!(title: 'go for a run')
Todo.create!(title: 'hike Mt. Everest', notes: 'Pack warm clothes!')
Todo.create!(title: 'sleep', notes: 'ASAP')
