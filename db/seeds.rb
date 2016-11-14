# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(name: "Pad Thai and Things", location: "705 King St. W., Toronto", image: "http://barcodedc.com/wp-content/gallery/food/healthfitnessrevolution-com.jpg", cuisine: "Asian Fusion")
Restaurant.create(name: "Frankies Gourmet Mac and Cheese", location: "500 Queen St. W., Toronto", image: "http://assets.epicurious.com/photos/573e30d2d44d8a8c0ea68d19/master/pass/51255890_macaroni-and-cheese_hires.jpg", cuisine: "Homestyle")
Restaurant.create(name: "Jimmy-Johns Sandwiches", location: "1000 Dundas St. W., Toronto", image: "http://www.followmefoodie.com/wp-content/uploads/2011/07/Estrellas-Montreal-Smoked-Meat-8.jpg", cuisine: "Sandwiches")
Restaurant.create(name: "Burger Priest", location: "50 King St. W., Toronto", image: "http://www.theburgerspriest.com/wp-content/uploads/2012/10/BP-web-11.jpg", cuisine: "Burgers")

User.create(username: "Connor", email: "connor@gmail.com", password_digest: "password")
