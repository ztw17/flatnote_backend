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

