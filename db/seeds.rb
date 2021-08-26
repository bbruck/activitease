# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
p "Destroying database"
Activity.destroy_all
User.destroy_all
p "Creating users"
user1 = User.new(email: 'b@bruck.com', password: 'XXXXXX')
user1.save!
user2 = User.create!(email: 'm@rosenfeld.com', password: 'XXXXXX')
user2.save!
user3 = User.create!(email: 's@mail.com', password: 'XXXXXX')
user3.save!
user4 = User.create!(email: 's@as.sy', password: 'XXXXXX')
user4.save!
p "Creating activities"


Activity.create!([
  {
    title: "Sewing with Pete",
    category: "Handicrafts",
    subcategory: "Clothing",
    address: "Friedrichshain",
    user_id: user1.id
  },
  {
    title: "Build a treehouse with Maria",
    category: "Architecture",
    subcategory: "Outdoor",
    address: "Moabit",
    user_id: user2.id
  },
  {
    title: "Bungeejumping with Fatima",
    category: "Adventure",
    subcategory: "Outdoor",
    address: "Lichtenberg",
    user_id: user3.id
  },
  {
    title: "Dog Circle with Bernard",
    category: "Animal",
    subcategory: "Outdoor",
    address: "Tucholskystraße 2, 10117 Berlin",
    user_id: user1.id
  },
  {
    title: "Improvisational Theater with Sascha",
    category: "Arts",
    subcategory: "Performance Arts",
    address: "Mühlenstraße 25, 10243 Berlin",
    user_id: user4.id
  },
  {
    title: "Stamp-Keeping with Michael",
    category: "Collectibles",
    subcategory: "Indoor",
    address: "Kemperpl. 1, 10785 Berlin",
    user_id: user2.id
  },
  {
    title: "Ukrainian-Language Social with Michael",
    category: "Culture",
    subcategory: "Language",
    address: "Zeughofstraße 22, 10997 Berlin",
    user_id: user2.id
  },
  {
    title: "Starry Night : Astronomy with Sascha",
    category: "Education",
    subcategory: "Sciences",
    address: "Prenzlauer Allee 80, 10405 Berlin",
    user_id: user4.id
  },
  {
    title: "Biriyani Cooking Class with Nayab",
    category: "Food",
    subcategory: "Ethnic",
    address: "Stubbenkammerstraße 6, 10437 Berlin",
    user_id: user3.id
  },
  {
    title: "Play Travel to Jerusalem with Michael",
    category: "Games",
    subcategory: "Indoor",
    address: "Fröbelstraße 17, 10405 Berlin",
    user_id: user2.id
  },
  {
    title: "Urban Gardening with Bernard",
    category: "Green",
    subcategory: "Urban Gardening",
    address: "Grellstraße 11, 10409 Berlin",
    user_id: user1.id
  },
  {
    title: "Sewing with Sascha",
    category: "Handicrafts",
    subcategory: "Sewing",
    address: "Prenzlauer Allee 187, 10405 Berlin",
    user_id: user4.id
  },
  {
    title: "Handpan Workshop with Michael",
    category: "Music",
    subcategory: "Instruments",
    address: "An der Malche 1, 13507 Berlin",
    user_id: user2.id
  },
  {
    title: "Birdwatching with Bernard",
    category: "Observation",
    subcategory: "Birds",
    address: "12529 Schönefeld",
    user_id: user1.id
  },
  {
    title: "Friday's Social Bar Mixer",
    category: "Social",
    subcategory: "Mixer",
    address: "Großbeerenstraße 200, 14482 Potsdam",
    user_id: user1.id
  },
  {
    title: "Love & Spiritual Growth",
    category: "Spiritual",
    subcategory: "Universal",
    address: "Panoramastraße 1A, 10178 Berlin",
    user_id: user4.id
  },
  {
    title: "Urban Breakouts",
    category: "Travel",
    subcategory: "Short Break",
    address: "Karl-Liebknecht-Str. 9, 10178 Berlin",
    user_id: user4.id
  },
  {
    title: "Sailing for Beginners",
    category: "Sports",
    subcategory: "Outdoors",
    address: "Fährstraße, 14469 Potsdam",
    user_id: user2.id
  },
  {
    title: "Bio-Hackers Thursdays",
    category: "Well-Being",
    subcategory: "Bio-Hacking",
    address: "16278 Angermünde",
    user_id: user3.id
  },
  {
    title: "Post-Apocalypse Survival Training",
    category: "Miscellaneous",
    subcategory: "Outdoors",
    address: "Hochfeldweg 5, 89555 Steinheim am Albuch",
    user_id: user2.id
  }
])
p "Created #{Activity.count} activities"
