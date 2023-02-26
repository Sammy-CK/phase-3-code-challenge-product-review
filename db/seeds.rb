User.destroy_all
Review.destroy_all
Product.destroy_all

puts 'Planting data 🌱' 
sam = User.create(name: "Sammy")
xbox = Product.create(name: "Xbox 1")
Review.create(star_rating: 5, comment: "Ps5 is better", user_id: sam.id, product_id: xbox.id )


kevo = User.create(name: "Kevin")
ps5 = Product.create(name: "Play Station 5")
Review.create(star_rating: 9, comment: "Ps5 is the GOAT", user_id: kevo.id, product_id: ps5.id )


allan = User.create(name: "Allan")
Review.create(star_rating: 4, comment: "Ps5 is better", user_id: allan.id, product_id: xbox.id )

phil = User.create(name: "Phillip")
Review.create(star_rating: 7, comment: "Ps5 all the way", user_id: phil.id, product_id: ps5.id )
Review.create(star_rating: 2, comment: "Xbox is trash", user_id: phil.id, product_id: xbox.id )

puts 'done planting 🌱'