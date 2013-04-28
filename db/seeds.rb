# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ParkingType.create(name: 'Zona Blanca', color:'black', background: 'white', position: 1)
ParkingType.create(name: 'Carga y descarga', color:'black', background: 'yellow', position: 2)
ParkingType.create(name: 'Zona Azul', color:'white', background: 'blue', position: 3)
ParkingType.create(name: 'Zona Verde', color:'white', background: 'green', position: 4)