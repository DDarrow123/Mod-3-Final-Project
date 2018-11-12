# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Card.create(image: 'https://assets.vogue.com/photos/5bb0ecff5c391430c2cb1e9f/master/pass/_VAL0057.jpg', likes: 0, details: 'Something about collection', collection_id: 1)
Card.create(image: 'https://assets.vogue.com/photos/5bb0ecff5c391430c2cb1e9f/master/pass/_VAL0057.jpg', likes: 0, details: 'Something even better', collection_id: 2)

Collection.create(designer: 'Pier Paulo', season: 'Spring 2019')
Collection.create(designer: 'Kate Mulleavy', season: 'Spring 2019')


User.create(name: 'Devon', username: 'DDarrow')
User.create(name: 'Erica', username: 'ERivera')

Comment.create(content: 'This is lovely', user_id: 1, card_id: 1)
Comment.create(content: 'This is lovely', user_id: 2, card_id: 2)
