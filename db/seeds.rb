# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
   Product.delete_all
	Product.create(title: "Atlas Shrugged",
				   description: "Great book by Ayn Rand",
				   image_url: "atlas.png",
				   price: "29.50"
	                   )
	Product.create(title: "Web Programming ",
	               description: "Great book about programming",
	               image_url: "wp.png",
	                  price: "244.44"
	               )
