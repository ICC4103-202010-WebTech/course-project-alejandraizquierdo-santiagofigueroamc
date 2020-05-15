# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users (Person)'s
Person.create(
    first_name: 'Alejandra',
    last_name: 'Izquierdo',
    username: 'aleIzquierdo',
    email: 'ale@gmail.com',
    password: '1234',
    biography: "This is Ale's biography",
    address: "sesame street 1221")

Person.create(
    first_name: 'Santiago',
    last_name: 'Figueroa',
    username: 'sfigueroa',
    email: 'santiago@gmail.com',
    password: '1111',
    biography: "This is Santiago's biography",
    address: "sesame street 2254")

# Events
Event.create(
    title: "grandma's lunch",
    description: "Family reunion at grandma's house",
    event_creator_id:2)

# Organizations
Organization.create(
    Name: "Jumbo"
)