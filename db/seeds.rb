# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all

Task.create(
    title: 'Hacer Asado',
    description: 'Preparar carbon, tirar carne a la parrilla',
    image: "https://picsum.photos/300/200/?=1")

Task.create(
    title: 'Comer Empanada',
    description: 'Ir a cualquier lugar criollo y zamparse una empanada',
    image: "https://picsum.photos/300/200/?=2")


Task.create(
    title: 'Tomar Terremoto',
    description: 'Terremoto is life',
    image: "https://picsum.photos/300/200/?=3")

Task.create(
    title: 'Ir a una Fonda',
    description: 'Ir donde sea que haya una fonda, si entras gratis mejor',
    image: "https://picsum.photos/300/200/?=4")

Task.create(
    title: 'Encumbrar Volantin',
    description: 'Un volantin de verdad sipo...',
    image: "https://picsum.photos/300/200/?=5")

Task.create(
    title: 'Comer Choripan',
    description: 'Que es un asado sin choripan??',
    image: "https://picsum.photos/300/200/?=6")

Task.create(
    title: 'Jugar al Trompo',
    description: 'Hazlo bailar en tu mano!',
    image: "https://picsum.photos/300/200/?=7")

Task.create(
    title: 'Pelear en una fonda',
    description: 'Puntos por tirarle objetos de la fonda a otra persona',
    image: "https://picsum.photos/300/200/?=8")

Task.create(
    title: 'Tener Caña',
    description: 'Si no tienes caña no viviste un buen 18',
    image: "https://picsum.photos/300/200/?=9")
