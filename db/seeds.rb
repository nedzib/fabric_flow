# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# db/seeds.rb

require 'faker'

owner = User.create(
  email: 'nedzib.sastoque@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

# Crear usuarios
users = (1..10).map do
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8)
  )
end

company = Company.create(
  name: Faker::Company.name,
  owner: owner
)

company.employees << users

providers = (1..10).map do
  Provider.create(
    name: Faker::Company.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    info: Faker::Lorem.paragraph(sentence_count: 2),
    company: company
  )
end

warehouse = Warehouse.create(
  address: Faker::Address.full_address,
  capacity: Faker::Number.decimal(l_digits: 4),
  company: company,
  responsible: users.sample
)

materials = (1..5).map do
  Material.create(
    size: Faker::Number.decimal(l_digits: 2),
    material_type: Material.material_types.keys.sample,
    weight: Faker::Number.decimal(l_digits: 2),
    provider: providers.sample,
    warehouse: warehouse
  )
end

takes = (1..10).map do
  Take.create(
    size: Faker::Number.decimal(l_digits: 2),
    weight: Faker::Number.decimal(l_digits: 2),
    material: materials.sample
  )
end

# Más seed data si es necesario...
