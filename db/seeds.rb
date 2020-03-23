# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tag.destroy_all
User.destroy_all
Note.destroy_all

Note.create(content: 'Wtf is going on right now', title: 'The Current State of Things', user_id: 1)
Note.create(content: 'Koalas are very cute', title: 'On Australian Marsupials and Their Behavior', user_id: 2)

Tag.create(name: 'Culture')
Tag.create(name: 'Nature')
Tag.create(name: 'Health')
Tag.create(name: 'Music')

User.create(username: 'zach')
User.create(username: 'paul')
