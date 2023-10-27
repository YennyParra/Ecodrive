# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# 
#Crea algunos autos eléctricos de ejemplo
#ElectricCar.create(
 #   model: "ELECTRO-1",
  #  brand: "tesla",
   # features: ["Batería_iones_litio", "Tecnología_Asistencia_Conducción"],
    #year: 2022,
    #range: 400,
    #price: 100.00,
    #image: "tesla_model_s.jpg"
  #)
  
  #ElectricCar.create(
   # model: "ELECTRO-2",
    #brand: "nissan",
    #features: ["Batería_iones_litio", "Sistema_Carga_alámbrica"],
    #year: 2023,
    #range: 350,
    #price: 90.00,
    #image: "nissan_leaf.jpg"
  #)
  
 #ElectricCar.create(
  #  model: "ELECTRO-3",
  #  brand: "audi",
   # features: ["Batería_estado_solido", "Tecnología_asistencia_Conducción"],
    #year: 2023,
    #range: 200,
    #price: 150.00,
    #image: "audi_model_s.jpg"
  #)
  
  #ElectricCar.create(
   # model: "ELECTRO-4",
    #brand: "chevrolet",
    #features: ["Batería_iones_litio", "Tecnología_Asistencia_Conducción"],
    #year: 2020,
    #range: 250,
    #price: 90.00,
    #image: "chevrolet_leaf.jpg"
  #)
  
 # ElectricCar.create(
  #  model: "ELECTRO-5",
   # brand: "kia",
    #features: ["Batería_iones_litio", "Sistema_Carga_alámbrica"],
    #year: 2021,
    #range: 200,
    #price: 90.00,
    #image: "kia_leaf.jpg"
  #)
  
  #ElectricCar.create(
   # model: "ELECTRO-6",
    #brand: "ford",
    #features: ["Batería de estado solido", "Sistema_Carga_alámbrica"],
    #year: 2022,
    #range: 250,
    #price: 100.00,
    #image: "ford_leaf.jpg"
  #)
  #ElectricCar.create(
   # model: "ELECTRO-7",
    #brand: "bmw",
    #features: ["Sistema_Carga_alámbrica", "Tecnologia_asistencia_conduccion"],
    #year: 2021,
    #range: 200,
    #price: 90.00,
    #image: "bmw_leaf.jpg"
  #)
  #ElectricCar.create(
  #  model: "ELECTRO-8",
  #  brand: "porsche",
   # features: ["Batería_iones_litio", "Sistema_Carga_inalámbrica"],
   # year: 2020,
   # range: 300,
   # price: 150.00,
   # image: "porshe_leaf.jpg"
  #)
  #ElectricCar.create(
   # model: "ELECTRO-9",
   # brand: "tesla",
   # features: ["Batería_iones_litio", "Sistema_Carga_alámbrica"],
   # year: 2023,
   # range: 200,
   # price: 300.00,
   # image: "tesla_leaf.jpg"
  #)
  #ElectricCar.create(
   # model: "ELECTRO-10",
    #brand: "nissan",
    #features: ["Batería_estado_solido", "Sistema_Carga_alámbrica"],
    #year: 2022,
    #range: 250,
    #price: 90.00,
    #image: "nissan_leaf.jpg"
  #)
  #ElectricCar.create(
   # model: "ELECTRO-11",
   # brand: "audi",
   # features: ["Sistema_Carga_alámbrica", "Tecnologia_asistencia_conduccion"], 
   # year: 2022,
   # range: 250,
   # price: 90.00,
   # image: "audi_leaf.jpg"
  #)
  #ElectricCar.create(
   # model: "ELECTRO-12",
   # brand: "volkswagen",
   # features: ["Batería_estado_solido", "Sistema_Carga_alámbrica"],
   # year: 2023,
   # range: 250,
   # price: 250.00,
   # image: "volkswagen_leaf.jpg"
  #)
  #ElectricCar.create(
   # model: "ELECTRO-13",
   # brand: "kia",
    #features: ["batería_iones_litio", "sistema_Carga_inalámbrica"],
    #year: 2022,
    #range: 150,
    #price: 120.00,
    #image: "kia_leaf.jpg"
 # )
  

#ota manera de crear seed
# Crear autos eléctricos de forma aleatoria
#10.times do
 # ElectricCar.create(
  #  model: "ELECTRO-#{Faker::Number.unique.number(digits: 3)}",
   # brand: Faker::Vehicle.manufacture,
    #features: [Faker::Lorem.word, Faker::Lorem.word], 
    #year: Faker::Number.between(from: 2010, to: 2023),
    #range: Faker::Number.between(from: 100, to: 500),
    #price: Faker::Number.decimal(l_digits: 2),
    #image: "#{Faker::Lorem.word}.jpg"
  #)
#end
