# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Ajmol', password: 'test123456')

Task.create([
  {title: "Drop it do it", details: "Drop everything and run"},
  {title: "Pick it up", details: "Drop everything and run"},
  {title: "Run", details: "Drop everything and run"},
  {title: "Jog", details: "Drop everything and run"}
])