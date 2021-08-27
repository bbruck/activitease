# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
p "Destroying database"
Activity.destroy_all
User.destroy_all
p "Creating users"
user1 = User.new(email: 'b@bruck.com', password: 'XXXXXX')
user1.save!
user2 = User.create!(email: 'm@rosenfeld.com', password: 'XXXXXX')
user2.save!
user3 = User.create!(email: 'n@mail.com', password: 'XXXXXX')
user3.save!
user4 = User.create!(email: 's@as.sy', password: 'XXXXXX')
user4.save!
p "Creating activities"



photo_1 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058338/activitease/sewing_n7ftad.jpg')
activity_1 = Activity.new(
    title: "Sewing with Pete",
    category: "Handicrafts",
    subcategory: "Clothing",
    address: "Friedrichshain",
    user_id: user1.id)
activity_1.save!
activity_1.photo.attach(io: photo_1, filename: 'sewing.jpg', content_type: 'image/png')

photo_2 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058338/activitease/treehouse_nswrdf.jpg')
activity_2 = Activity.new(
    title: "Build a treehouse with Maria",
    category: "Architecture",
    subcategory: "Outdoor",
    address: "Moabit",
    user_id: user2.id)
activity_2.save!
activity_2.photo.attach(io: photo_2, filename: 'treehouse.jpg', content_type: 'image/png')


photo_3 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630060074/activitease/bungee_wbiviz.jpg')
activity_3 = Activity.new(
    title: "Bungeejumping with Fatima",
    category: "Adventure",
    subcategory: "Outdoor",
    address: "Prenzlauer Allee 187, 10405 Berlin",
    user_id: user3.id)
activity_3.save!
activity_3.photo.attach(io: photo_3, filename: 'bungee.jpg', content_type: 'image/png')

photo_4 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058338/activitease/dog_circle_zeq9d2.jpg')
activity_4 = Activity.new(
    title: "Dog Circle with Bernard",
    category: "Animal",
    subcategory: "Outdoor",
    address: "Tucholskystraße 2, 10117 Berlin",
    user_id: user1.id)
activity_4.save!
activity_4.photo.attach(io: photo_4, filename: 'dog.jpg', content_type: 'image/png')

photo_5 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/improvisational_theater_ga10hy.jpg')
activity_5 = Activity.new(
    title: "Improvisational Theater with Sascha",
    category: "Arts",
    subcategory: "Performance Arts",
    address: "Mühlenstraße 25, 10243 Berlin",
    user_id: user4.id)
activity_5.save!
activity_5.photo.attach(io: photo_5, filename: 'impro.jpg', content_type: 'image/png')

photo_6 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/stamps_cmgdwa.jpg')
activity_6 = Activity.new(
    title: "Stamp-Keeping with Michael",
    category: "Collectibles",
    subcategory: "Indoor",
    address: "Kemperpl. 1, 10785 Berlin",
    user_id: user2.id)
activity_6.save!
activity_6.photo.attach(io: photo_6, filename: 'stamps.jpg', content_type: 'image/png')

photo_7 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630062090/activitease/russian_oa2myl.jpg')
activity_7 = Activity.new(
    title: "Russian-Language Social with Michael",
    category: "Culture",
    subcategory: "Language",
    address: "Zeughofstraße 22, 10997 Berlin",
    user_id: user2.id)
activity_7.save!
activity_7.photo.attach(io: photo_7, filename: 'russian.jpg', content_type: 'image/png')

photo_8 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058336/activitease/astronomy_ua7xlo.jpg')
activity_8 = Activity.new(
    title: "Starry Night : Astronomy with Sascha",
    category: "Education",
    subcategory: "Sciences",
    address: "Prenzlauer Allee 80, 10405 Berlin",
    user_id: user4.id)
activity_8.save!
activity_8.photo.attach(io: photo_8, filename: 'starry_night.jpg', content_type: 'image/png')

photo_9 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058334/activitease/biriyani_e6amgv.jpg')
activity_9 = Activity.new(
    title: "Biriyani Cooking Class with Nayab",
    category: "Food",
    subcategory: "Ethnic",
    address: "Stubbenkammerstraße 6, 10437 Berlin",
    user_id: user3.id)
activity_9.save!
activity_9.photo.attach(io: photo_9, filename: 'biriyani.jpg', content_type: 'image/png')

photo_10 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058335/activitease/chairs_uxiohp.jpg')
activity_10 = Activity.new(
    title: "Play Travel to Jerusalem with Michael",
    category: "Games",
    subcategory: "Indoor",
    address: "Fröbelstraße 17, 10405 Berlin",
    user_id: user2.id)
activity_10.save!
activity_10.photo.attach(io: photo_10, filename: 'chairs.jpg', content_type: 'image/png')

photo_11 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058338/activitease/urban_gardening_aqsjq7.jpg')
activity_11 = Activity.new(
    title: "Urban Gardening with Bernard",
    category: "Green",
    subcategory: "Urban Gardening",
    address: "Grellstraße 11, 10409 Berlin",
    user_id: user1.id)
activity_11.save!
activity_11.photo.attach(io: photo_11, filename: 'gardening.jpg', content_type: 'image/png')

photo_12 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/handpan_wecguy.jpg')
activity_12 = Activity.new(
    title: "Handpan Workshop with Michael",
    category: "Music",
    subcategory: "Instruments",
    address: "An der Malche 1, 13507 Berlin",
    user_id: user2.id)
activity_12.save!
activity_12.photo.attach(io: photo_12, filename: 'handpan.jpg', content_type: 'image/png')

photo_13 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/birdwatching_hyunjf.jpg')
activity_13 = Activity.new(
    title: "Birdwatching with Bernard",
    category: "Observation",
    subcategory: "Birds",
    address: "12529 Schönefeld",
    user_id: user1.id)
activity_13.save!
activity_13.photo.attach(io: photo_13, filename: 'bird.jpg', content_type: 'image/png')

photo_14 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/social_mixer_vnajpi.jpg')
activity_14 = Activity.new(
    title: "Friday's Social Bar Mixer",
    category: "Social",
    subcategory: "Mixer",
    address: "Großbeerenstraße 200, 14482 Potsdam",
    user_id: user1.id)
activity_14.save!
activity_14.photo.attach(io: photo_14, filename: 'social.jpg', content_type: 'image/png')

photo_15 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/spiritual_development_vtt1br.jpg')
activity_15 = Activity.new(
    title: "Love & Spiritual Growth",
    category: "Spiritual",
    subcategory: "Universal",
    address: "Panoramastraße 1A, 10178 Berlin",
    user_id: user4.id)
activity_15.save!
activity_15.photo.attach(io: photo_15, filename: 'growth.jpg', content_type: 'image/png')

photo_16 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/adrian-trinkaus-7UCmXtyg1CQ-unsplash_wmafjn.jpg')
activity_16 = Activity.new(
    title: "Urban Breakouts",
    category: "Travel",
    subcategory: "Short Break",
    address: "Karl-Liebknecht-Str. 9, 10178 Berlin",
    user_id: user4.id)
activity_16.save!
activity_16.photo.attach(io: photo_16, filename: 'travel.jpg', content_type: 'image/png')

photo_17 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058335/activitease/sailing_wlkxur.jpg')
activity_17 = Activity.new(
    title: "Sailing for Beginners",
    category: "Sports",
    subcategory: "Outdoors",
    address: "Fährstraße, 14469 Potsdam",
    user_id: user2.id)
activity_17.save!
activity_17.photo.attach(io: photo_17, filename: 'sailing.jpg', content_type: 'image/png')

photo_18 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630061503/activitease/Graphik_Biohacking_1978x925_800x800_cqmbke.jpg')
activity_18 = Activity.new(
    title: "Bio-Hackers & Transhumanists Thursdays",
    category: "Well-Being",
    subcategory: "Bio-Hacking",
    address: "Otto-Braun-Straße 65, 10178 Berlin",
    user_id: user3.id)
activity_18.save!
activity_18.photo.attach(io: photo_18, filename: 'hackerz.jpg', content_type: 'image/png')

p "Created #{Activity.count} activities"
