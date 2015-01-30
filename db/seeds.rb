# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Toy.delete_all
Toyfeature.delete_all
Toypicture.delete_all
Toyreview.delete_all
Dog.delete_all
User.delete_all


# Create the toys
puts "Creating toys..."
chewbacca = Toy.create(name: "Chewbacca Santa Clause", short_description: "Furry Wookie with a Santa Hat", long_description: "", color: "brown", durability: 4)
squirrellog = Toy.create(name: "Hide-A-Squirrel", short_description: "Squeeky Squirrels in a Log", long_description: "", color: "tan", durability: 6)
ropetug = Toy.create(name: "Rope Tug", short_description: "Classic Rope Tug", long_description: "", color: "multi", durability: 10)
cowsqueek = Toy.create(name: "Squeeky Cow", short_description: "Bovine with a tennis ball for a head and a long squeeker", long_description: "", color: "tan", durability: 5)
pigsqueek = Toy.create(name: "Squeeky Pig", short_description: "Pig with a tennis ball for a head and a long squeeker", long_description: "", color: "pink", durability: 5)

# Create the features
puts "Creating toy features..."
chewbacca_features = Toyfeature.create(toy_id: chewbacca.id, feature1: "long squeeker", feature2: "furry", feature3: "stuffing")
squirrellog_features = Toyfeature.create(toy_id: squirrellog.id, feature1: "squeeker", feature2: "puzzle", feature3: "stuffing")
ropetug_features = Toyfeature.create(toy_id: ropetug.id, feature1: "tug")
cowsqueek_features = Toyfeature.create(toy_id: cowsqueek.id, feature1: "long squeeker", feature2: "tennis ball", feature3: "krinkle")
pigsqueek_features = Toyfeature.create(toy_id: pigsqueek.id, feature1: "long squeeker", feature2: "tennis ball", feature3: "krinkle")

#Create the Pictures
puts "Creating pictures..."
chewbacca_pics = Toypicture.create(toy_id: chewbacca.id, picture1: "", picture2: "", picture3: "", picture4: "", picture5: "")
squirrellog_pics = Toypicture.create(toy_id: squirrellog.id, picture1: "", picture2: "", picture3: "", picture4: "", picture5: "")
ropetug_pics = Toypicture.create(toy_id: ropetug.id, picture1: "", picture2: "", picture3: "", picture4: "", picture5: "")
cowsqueek_pics = Toypicture.create(toy_id: cowsqueek.id, picture1: "", picture2: "", picture3: "", picture4: "", picture5: "")
pigsqueek_pics = Toypicture.create(toy_id: pigsqueek.id, picture1: "", picture2: "", picture3: "", picture4: "", picture5: "")

# Create the dogs
logan = Dog.create(name: "Logan", picture: "", size: "small", breed: "Beagle Mix", chew_strength: "light", favorite_toy_id1: chewbacca.id)
george = Dog.create(name: "George", picture: "", size: "medium", breed: "Appenzeller Mountain Dog", chew_strength: "very strong", favorite_toy_id1: squirrellog.id)
busa = Dog.create(name: "Busa", picture: "", size: "Extra Large", breed: "Greater Swiss Mountain Dog", chew_strength: "strong", favorite_toy_id1: ropetug.id)
pepper = Dog.create(name: "Pepper", picture: "", size: "medium", breed: "Mutt", chew_strength: "light", favorite_toy_id1: cowsqueek.id)
cinnamon = Dog.create(name: "Cinnamon", picture: "", size: "medium", breed: "Mutt", chew_strength: "strong", favorite_toy_id1: pigsqueek.id)

# Create the Users
dave = User.create(email: "dweinman2015@kellogg.northwestern.edu", username: "dweinman", password: "password0", dog_id1: logan.id)
dave2 = User.create(email: "weinman88@gmail.com", username: "weinman", password: "password0", dog_id1: george.id)
user_three = User.create(email: "weinman@ymail.com", username: "dave", password: "password0", dog_id1: busa.id)
user_four = User.create(email: "oldschool@prodigy.net", username: "admin", password: "GOD", dog_id1: pepper.id)
meghan = User.create(email: "mweinman2016@kellogg.northwestern.edu", username: "meghan", password: "hello", dog_id1: cinnamon.id)

# Create the reviews
chewbacca_reviews = Toyreview.create(toy_id: chewbacca.id, user_id: dave.id, dog_id: logan.id, review:"Review for a furry oaf", review_date: "05/15/2010", overall_rating: 1, durability_rating: 4)
squirrellog_reviews = Toyreview.create(toy_id: squirrellog.id, user_id: dave2.id, dog_id: george.id, review:"Review for the squirrel log", review_date: "09/06/2014", overall_rating: 2, durability_rating: 6)
ropetug_reviews = Toyreview.create(toy_id: ropetug.id, user_id: user_three.id, dog_id: busa.id, review:"Review for a ropetug", review_date: "01/31/2009", overall_rating: 3, durability_rating: 10)
cowsqueek_reviews = Toyreview.create(toy_id: cowsqueek.id, user_id: user_four.id, dog_id: pepper.id, review:"Review for a squeeky cow", review_date: "02/29/2012", overall_rating: 4, durability_rating: 5)
pigsqueek_reviews = Toyreview.create(toy_id: pigsqueek.id, user_id: meghan.id, dog_id: cinnamon.id, review:"Review for a squeeky pig", review_date: "10/30/2011", overall_rating: 5, durability_rating: 5)

puts "There are now #{Toy.count} toys, #{Toyfeature.count} toy features, #{Toyreview.count} toy reviews, #{Dog.count} dogs, and #{User.count} users in the database."
