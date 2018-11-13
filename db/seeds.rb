# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Card.create(image: 'http://localhost:3000/Valentino_1.jpg', likes: 0, details: 'Something about collection', collection_id: 1)
Card.create(image: 'http://localhost:3000/Rodarte_1.jpg', likes: 0, details: 'Something even better and amazing', collection_id: 2)
Card.create(image: 'http://localhost:3000/Dries_1.jpg', likes: 0, details: 'Something lovely', collection_id: 3)
Card.create(image: 'http://localhost:3000/McQueen_1.jpg', likes: 0, details: 'Something crazy wonderful', collection_id: 4)

Collection.create(designer: 'Pier Paulo', season: 'Spring 2019', brand: 'Valentino')
Collection.create(designer: 'Kate Mulleavy', season: 'Spring 2019', brand: 'Rodarte')
Collection.create(designer: 'Dries Van Noten', season: 'Spring 2019', brand: 'Dries Van Noten')
Collection.create(designer: 'Sarah Burton', season: 'Spring 2019', brand: 'McQueen')


User.create(name: 'Devon', username: 'DDarrow')
User.create(name: 'Erica', username: 'ERivera')
User.create(name: 'Dawn', username: 'Dyawn')
User.create(name: 'John', username: 'JBaby123')

Comment.create(content: 'This is lovely', user_id: 1, card_id: 1)
Comment.create(content: 'This is dank', user_id: 2, card_id: 2)
Comment.create(content: 'Such a good lewk', user_id: 3, card_id: 3)
Comment.create(content: 'Dying for this', user_id: 4, card_id: 4)
