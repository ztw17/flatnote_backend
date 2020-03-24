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

User.create(username: 'zach')
User.create(username: 'paul')

zach = User.first
paul = User.second

Note.create(content: 'Wtf is going on right now', title: 'The Current State of Things', user: zach)
Note.create(content: 'Koalas are very cute', title: 'On Australian Marsupials and Their Behavior', user: paul)

Tag.create(name: 'Culture')
Tag.create(name: 'Nature')
Tag.create(name: 'Health')
Tag.create(name: 'Music')

