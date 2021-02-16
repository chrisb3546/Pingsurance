# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

leads = [
    ["John", "Doe", "123456789","hello"],
    ["Jane", "Doe", "123456788","hello"],
    ["test", "lead", "123456787","hello"]
]

leads.each do |first_name, last_name, phone_number, note|
    Lead.create(first_name: first_name, last_name: last_name, phone_number: phone_number, note: note)
end


