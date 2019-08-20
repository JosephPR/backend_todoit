# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Todo.destroy_all
Grocery.destroy_all
Apartment.destroy_all
Tablature.destroy_all

Todo.create(task: "Help Persist", description: "This is in the backend")
Grocery.create(item: "Milk")
Tablature.create(name: "BWV 999 - Prelude in Cm for solo lute", url:"https://www.classtab.org/bach_js_bwv0999_prelude_in_cm_for_lute.txt",description:"one of Bachs most popular pieces for guitar.It was originally in Cm, but here it is transposed to Dm for guitar", composer:"Johann Sebastian Bach (1685-1750)", skill:"medium/hard")
Apartment.create(neighborhood: "westminster", price:"1300", amenities:"balcony", number:"3032474999")
