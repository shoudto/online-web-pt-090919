# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Owner.destroy_all
Cat.destroy_all

Owner.create(name: "sam").cats.create(name: "ginger", breed: "siamese")
owner2 = Owner.create(name: "abby")
Cat.create(name: "abby", breed: "puma", owner: owner2)
Cat.create(name: "bosun", breed: "siamese", owner: owner2)
Cat.create(name: "zenith", breed: "siamese", owner: owner2)
Owner.create(name: "ally").cats << [
    Cat.create(name: "bella", breed: "siamese"),
    Cat.create(name: "fernie", breed: "main coon"),
    Cat.create(name: "napolean", breed: "siamese")
]