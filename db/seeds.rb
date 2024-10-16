# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

parana = State.create(name: 'Paraná')
santa_catarina = State.create(name: 'Santa Catarina')
rio_grande_do_sul = State.create(name: 'Rio Grande do Sul')

City.create(name: 'Curitiba', state: parana)
City.create(name: 'Ponta Grossa', state: parana)
City.create(name: 'Matinhos', state: parana)

City.create(name: 'Joinville', state: santa_catarina)
City.create(name: 'Florianópolis', state: santa_catarina)
City.create(name: 'Blumenau', state: santa_catarina)

City.create(name: 'Porto Alegre', state: rio_grande_do_sul)
City.create(name: 'Passo Fundo', state: rio_grande_do_sul)
City.create(name: 'Novo Hamburgo', state: rio_grande_do_sul)

puts 'States and cities seeded successfully'
