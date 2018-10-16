# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jayz = Artist.create(name: "Jay-z", bio: "asdjnfaskdjnfkjasdh")
adele = Artist.create(name: "Adele", bio: "hello hello hello")


rap = Genre.create(name:"rap")
pop = Genre.create(name:"pop")

hello = Song.create(name:"hello", artist_id: adele.id , genre_id: pop.id)
magna_carta = Song.create(name:"Magna Carta", artist_id: jayz.id , genre_id: rap.id)