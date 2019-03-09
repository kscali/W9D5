# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Band.destroy_all
Album.destroy_all

band1 = Band.create!(name: "Billy's Band")
band2 = Band.create!(name: "Valery's Band")
band3 = Band.create!(name: "Koy's Band")
band4 = Band.create!(name: "Orange's Band")
band5 = Band.create!(name: "Blue's Band")

Album.create!(band_id: band1.id , title: 'Up High', year: 2010, live: true)
Album.create!(band_id: band3.id , title: 'Studying hard', year: 2016, live: true)
Album.create!(band_id: band4.id, title: 'Assessment soon', year: 2018, live: false)

Album.create!(band_id: band4.id, title: "Hello", year: 2012, live: true)
Album.create!(band_id: band5.id, title: "Hello Beautiful", year: 2008, live: false)
Album.create!(band_id: band1.id, title: "Hello Night", year: 2002, live: true)
