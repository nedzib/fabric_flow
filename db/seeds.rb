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

# Crear un proceso con 5 pasos
company_process = CompanyProcess.create(
  name: 'Fabricación de Jeans',
  description: 'Proceso para fabricar jeans',
  company: company
)

# Crear 5 pasos para el proceso
process_steps = (1..5).map do |step_order|
  ProcessStep.create(
    name: "Paso #{step_order}",
    description: "Descripción del paso #{step_order}",
    step_order: step_order,
    company_process: company_process
  )
end


# Crea items asociados a ese proceso con diferentes estados
items = []

# Crea al menos un Item en cada estado
items << Item.create(model: 'Modelo Draft', name: 'Jean Draft', status: :draft, process: company_process)
items << Item.create(model: 'Modelo Active', name: 'Jean Active', status: :active, process: company_process)
items << Item.create(model: 'Modelo Archived', name: 'Jean Archived', status: :archived, process: company_process)

# Crea otros items con estados aleatorios
(1..2).each do |i|
  items << Item.create(
    model: "Modelo #{i}",
    name: "Jean #{i}",
    status: Item.statuses.keys.sample,
    process: company_process
  )
end

# Más seed data si es necesario...
