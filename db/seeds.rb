# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Astronaut.destroy_all
Mission.destroy_all

neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
buzz = Astronaut.create(name: "Buzz Aldrin", age: 31, job: "Test Pilot")

apollo = Mission.create(name: "Apollo 13")
capricorn = Mission.create(name: "Capricorn 4")
gemini = Mission.create(name: "Gemini 7")
