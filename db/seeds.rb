# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

# p "Destroying database"
# Activity.destroy_all
# User.destroy_all
# Booking.destroy_all

# p "Database destroyed"

p "Creating users"
user1 = User.new(email: 'b@bruck.com', nickname: "Bernie", password: 'XXXXXX')
user1.save!
user2 = User.create!(email: 'm@rosenfeld.com', nickname: "NetterHorst", password: 'XXXXXX')
user2.save!
user3 = User.create!(email: 'n@mail.com', nickname: "Fatima", password: 'XXXXXX')
user3.save!
user4 = User.create!(email: 's@as.sy', nickname: "Love Love Love", password: 'XXXXXX')
user4.save!
p "Creating activities"

photo_1 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058338/activitease/sewing_n7ftad.jpg')
activity_1 = Activity.new(
    title: "Sustainable Sewing with Bernie",
    category: "Handicrafts",
    address: "Alt-Stralau 70, 10245 Berlin",
    date_from: "06/09/2021 19:00",
    date_to: "06/09/2021 21:00",
    description: "Weekly on Monday 7-9pm, this sewing activity is for you to repair and reuse to create your own sustainable wardrobe. You learn to sew from scratch, new, timeless pieces and understand the clothes making process (fabric cutting, simple pattern work, fitting, the most common sewing techniques), so that you can refresh your style without always buying new clothes. Depending on your sewing experience and desires, focus is on Introduction to Fabrics & the Sewing Machine, Repairs & Alterations, Skirt or Shorts, Modern Kimono, Stretch Dress or T-Shirt, Zipper Trousers, Open Upcycling Project, Button Shirt or Shirt-Dress. Everyone is welcome.",
    user_id: user1.id)
activity_1.save!
activity_1.photo.attach(io: photo_1, filename: 'sewing.jpg', content_type: 'image/png')

photo_2 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058338/activitease/treehouse_nswrdf.jpg')
activity_2 = Activity.new(
    title: "Build a treehouse with Michael",
    category: "Adventure",
    address: "Otto-Braun-Straße 65, 10178 Berlin",
    date_from: "11/09/2021 10:00",
    date_to: "17/09/2021 17:00",
    description: "A creative insight into how to build your own treehouse from a simple platform type to a fairy castle. Maria educates and empowers its participants to build treehouse experiences and delivers the imperative message that it is possible to start living in harmony with nature now ... off the grid ... with low impact on the environment and an ethos of responsible consumerism. Join Maria in this collaborative exploration and endeavor into low impact living. Block workshop. September 11-17, 2021. Each scheduled day from 10am-5pm.",
    user_id: user2.id)
activity_2.save!
activity_2.photo.attach(io: photo_2, filename: 'treehouse.jpg', content_type: 'image/png')

photo_3 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630060074/activitease/bungee_wbiviz.jpg')
activity_3 = Activity.new(
    title: "Bungeejumping with Fatima",
    category: "Adventure",
    address: "Prenzlauer Allee 187, 10405 Berlin",
    date_from: "05/09/2021 09:00",
    date_to: "05/09/2021 17:00",
    description: "Always dreamt of flying like a superhero? Jump with Fatina & family and experience pure adrenaline and excitement! Fatima will prepare for the jump on the ground first, after a short briefing we will be connected to our harnesses and climbed to a height of 70 meters (a building height of approximately 23 floors) with a crane and JumpMaster. We will be slowly getting excited. After the command, we leave ourselves in the void! That moment, pure adrenaline and excitement will embrace your whole self! After experiencing this excitement, you will want to do bungee jumping again! All materials we use have national / international certification and regular maintenance and inspections are performed. Our team consists of 1 JumpMaster, 2 Tower crane operators, 2 Rope access technicians, and our team consists of first aid training, safety training and occupationally qualified specialists. The maximum jumper weight is 150 kg, the minimum jumper weight is 25 kg and the minimum height is 130 cm. In a tandem (double) jump, the total weight of the jumpers must not exceed 150 kilos. From the age of 10 it is possible to jump. Jumpers under the age of 18 require parental supervision. If you do not have any serious health problems, especially orthopedic, traumatologic or cardiac / circulatory disorders or if you have not had a serious surgical operation in the last 2 years, you can easily do Bungee Jumping. For safety reasons, all kinds of accessories and glasses are not allowed. Every Sunday between 09:00 and 17:00. It is enough to come with casual clothes or beach clothes. Because the jump is made bare feet, there is no need for shoes.",
    user_id: user3.id)
activity_3.save!
activity_3.photo.attach(io: photo_3, filename: 'bungee.jpg', content_type: 'image/png')

photo_4 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058338/activitease/dog_circle_zeq9d2.jpg')
activity_4 = Activity.new(
    title: "Dog Circle & Games with Bernard",
    category: "Games",
    address: "Tucholskystraße 2, 10117 Berlin",
    date_from: "05/09/2021 13:00",
    date_to: "05/09/2021 15:00",
    description: "Bernard gathers for dog lovers to socialise, to go on walks with tons of dogs, find dog sitting opportunities or meet potential dog sitters, share experiences and have fun with the dogs of Berlin! Every Sunday afternoon. 1pm-3pm.",
    user_id: user1.id)
activity_4.save!
activity_4.photo.attach(io: photo_4, filename: 'dog.jpg', content_type: 'image/png')

photo_5 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/improvisational_theater_ga10hy.jpg')
activity_5 = Activity.new(
    title: "Improvisational Theater with Sascha",
    category: "Education",
    address: "Mühlenstraße 25, 10243 Berlin",
    date_from: "06/09/2021 18:00",
    date_to: "06/09/2021 20:00",
    description: "Improvisational Theater is the form of theater, in which most or all of what is performed is unplanned or unscripted: created spontaneously by the performers. In its purest form, the dialogue, action, story, and characters are created collaboratively by the players as the improvisation unfolds in present time, without use of an already prepared, written script. Join Sascha and improvise, everyone is welcomed, be curious and grow with impro. We meet every Monday, 6-8pm. Open for everyone. No minimum number of participants required.",
    user_id: user4.id)
activity_5.save!
activity_5.photo.attach(io: photo_5, filename: 'impro.jpg', content_type: 'image/png')

photo_6 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/stamps_cmgdwa.jpg')
activity_6 = Activity.new(
    title: "Stamp-Collecting with Michael",
    category: "Collectibles",
    address: "Potsdamer Str. 4, 10785 Berlin",
    date_from: "04/09/2021 15:00",
    date_to: "04/09/2021 17:00",
    description: "For all stamp collectors - from the curious beginner to the experienced philatelist. Every Saturday 3-5pm, we hold a meeting that is open to everyone and all newcomers are welcome! We have beginner stamp collectors to lifelong experts joining us. We start each meeting with a voluntary show and tell in which we share different stamps, covers or items of philatelic interest from our collections. This is followed by general discussion of stamp related topics and announcements of other online stamp events members may be interested in. Attendees also arrange trades/sales by announcing what they are interested in and if anyone has those items they then arrange to mail them to that member off-line. If you are a stamp collector I hope you can join us!",
    user_id: user2.id)
activity_6.save!
activity_6.photo.attach(io: photo_6, filename: 'stamps.jpg', content_type: 'image/png')

photo_7 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630062090/activitease/russian_oa2myl.jpg')
activity_7 = Activity.new(
    title: "Russian-Language Social with Michael",
    category: "Culture",
    address: "Zeughofstraße 22, 10997 Berlin",
    date_from: "07/09/2021 19:00",
    date_to: "07/09/2021 22:00",
    description: "Beyond vodka and pickles, Babushkas and Matryoshkas: Meet local Russian language and culture lovers! Have fun practicing, learning new phrases and sentences and finally understanding those verb conjugations! All ages and levels welcome. Every Tuesday evening 7-10pm.",
    user_id: user2.id)
activity_7.save!
activity_7.photo.attach(io: photo_7, filename: 'russian.jpg', content_type: 'image/png')

photo_8 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058336/activitease/astronomy_ua7xlo.jpg')
activity_8 = Activity.new(
    title: "Starry Night : Astronomy with Sascha",
    category: "Education",
    address: "Prenzlauer Allee 80, 10405 Berlin",
    date_from: "05/09/2021 19:00",
    date_to: "05/09/2021 21:00",
    description: "Astronomy in the City. Join us for stargazing, observing with portable telescopes, talks from our experts about cutting edge astronomy research, and your chance to ask them anything about astronomy! Starry Night over Berlin. Let's see together what you might not be able to see alone: A world without borders and simply look above to something greater than ourselves. We meet every Sunday evening from 7-9. Everyone is welcome. No minimum number of participants.",
    user_id: user4.id)
activity_8.save!
activity_8.photo.attach(io: photo_8, filename: 'starry_night.jpg', content_type: 'image/png')

photo_9 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058334/activitease/biriyani_e6amgv.jpg')
activity_9 = Activity.new(
    title: "Biriyani Cooking Class with Nayab",
    category: "Food",
    address: "Stubbenkammerstraße 6, 10437 Berlin",
    date_from: "05/09/2021 10:00",
    date_to: "05/09/2021 16:00",
    description: "Learn to cook Dum Chicken Biryani, Mutton Biryani, Fish Biryani, Prawn Biryani with Nayab. Feel welcome! Nayab invites you to a experience of 1001 tastes, a culinary and cultural journey to Pakistan. All openminded food-lovers are welcome. Every Sunday 10am-4pm.",
    user_id: user3.id)
activity_9.save!
activity_9.photo.attach(io: photo_9, filename: 'biriyani.jpg', content_type: 'image/png')

photo_10 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058335/activitease/chairs_uxiohp.jpg')
activity_10 = Activity.new(
    title: "Play Travel to Jerusalem with Michael",
    category: "Games",
    address: "Fröbelstraße 17, 10405 Berlin",
    date_from: "05/09/2021 16:00",
    date_to: "05/09/2021 18:00",
    description: "Play musical chairs to swap jobs, prospects, or decisions in a rapid, confusing fashion. The original term comes from a children's game, also called “travel to Jerusalem,” in which the players march to music around a row of chairs where every other chair faces in the opposite direction. Join Michael in playfulness. Please note: this is an activity for adults only who would like to bring out their inner child. Every Sunday 4-6pm.",
    user_id: user2.id)
activity_10.save!
activity_10.photo.attach(io: photo_10, filename: 'chairs.jpg', content_type: 'image/png')

photo_11 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058338/activitease/urban_gardening_aqsjq7.jpg')
activity_11 = Activity.new(
    title: "Urban Gardening Adventure with Bernard",
    category: "Adventure",
    address: "Grellstraße 11, 10409 Berlin",
    date_from: "03/09/2021 07:00",
    date_to: "03/09/2022 19:00",
    description: "Wanna do something green? Bernard’s invites urban gardeners or all ages and levels. Every day except holidays from 7am-7pm. Join and dish some dirt with other local gardeners.",
    user_id: user1.id)
activity_11.save!
activity_11.photo.attach(io: photo_11, filename: 'gardening.jpg', content_type: 'image/png')

photo_12 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/handpan_wecguy.jpg')
activity_12 = Activity.new(
    title: "Handpan Workshop with Michael",
    category: "Music",
    address: "An der Malche 1, 13507 Berlin",
    date_from: "07/09/2021 19:00",
    date_to: "07/09/2021 21:00",
    description: "You want to get to know your handpan in a workshop and / or finetune your abilities? Michael kick-starts your journey into the world of handpan playing. You’ll learn the essential basics and even get to play your first musical piece right away. With Michael, you will have created a perfect foundation to develop your playing further and continue your handpan journey. Bring your handpan is recommended. Or try out. Open for all. Every Tuesday 7-9pm.",
    user_id: user2.id)
activity_12.save!
activity_12.photo.attach(io: photo_12, filename: 'handpan.jpg', content_type: 'image/png')

photo_13 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/birdwatching_hyunjf.jpg')
activity_13 = Activity.new(
    title: "Birdwatching with Bernard (Educational Workshop)",
    category: "Education",
    address: "12529 Schönefeld",
    date_from: "04/09/2021 13:00",
    date_to: "04/09/2021 17:00",
    description: "Join Bernard and other local Birdwatchers. Gather to discuss sightings and learn more about our feathered wonders. No minimum number of participants required. We meet every Saturday 1-5pm. Open for everyone.",
    user_id: user1.id)
activity_13.save!
activity_13.photo.attach(io: photo_13, filename: 'bird.jpg', content_type: 'image/png')

photo_14 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/social_mixer_vnajpi.jpg')
activity_14 = Activity.new(
    title: "Learn Mixology @ Friday's Social Bar Mixer",
    category: "Education",
    address: "Großbeerenstraße 200, 14482 Potsdam",
    date_from: "03/09/2021 19:00",
    date_to: "04/09/2021 02:00",
    description: "Open for meeting new people? Fun having drinks? Come mix in and socialize with us at a cocktail bar. We might show you some moves and tricks in mixology. So show up whenever you can and stay as long as you want. See you there. Every Friday from 7pm on.",
    user_id: user1.id)
activity_14.save!
activity_14.photo.attach(io: photo_14, filename: 'social.jpg', content_type: 'image/png')

photo_15 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/spiritual_development_vtt1br.jpg')
activity_15 = Activity.new(
    title: "Love & Spiritual Growth",
    category: "Culture",
    address: "Panoramastraße 1A, 10178 Berlin",
    date_from: "11/09/2021 13:00",
    date_to: "11/09/2021 15:00",
    description: "Your life is the canvas. You are the artist. Paint a more fulfilling life for yourself using mindful techniques and exercises. You seek to overcome barriers that stand between you and a recognition of your inner selves, the reality of those around you, participation in society, and contact with a natural world exceeding human powers. Join the compassionate discourse, share stories of your journey and be open for universal mindful techniques. It is up to you. Every Saturday 1-3pm.",
    user_id: user4.id)
activity_15.save!
activity_15.photo.attach(io: photo_15, filename: 'growth.jpg', content_type: 'image/png')

photo_16 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058337/activitease/adrian-trinkaus-7UCmXtyg1CQ-unsplash_wmafjn.jpg')
activity_16 = Activity.new(
    title: "Urban Breakouts",
    category: "Adventure",
    address: "Karl-Liebknecht-Str. 9, 10178 Berlin",
    date_from: "08/09/2021 19:00",
    date_to: "08/09/2021 21:00",
    description: "Breaking out from the city without leaving the city? Urban breakouts organizes trips to explore hidden places, always curious and open to see the city from a different side, change perspectives while discovering urban gems without actually leaving the city. Join and plan our next adventure together. We meet every Wednesday, 7-9pm.",
    user_id: user4.id)
activity_16.save!
activity_16.photo.attach(io: photo_16, filename: 'travel.jpg', content_type: 'image/png')

photo_17 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630058335/activitease/sailing_wlkxur.jpg')
activity_17 = Activity.new(
    title: "Sailing for Beginners",
    category: "Adventure",
    address: "Fährstraße, 14469 Potsdam",
    date_from: "09/09/2021 19:00",
    date_to: "09/09/2021 21:00",
    description: "Freedom in a nutshell. Our weekly gathering brings sailing enthusiasts together. Let’s share experiences, from first steps in sailing to find a crew for the next sail, this gathering is designed to familiarize you with the world of sailing, one that some see as a sport and others choose as a lifestyle. Thursdays 7-9pm.",
    user_id: user2.id)
activity_17.save!
activity_17.photo.attach(io: photo_17, filename: 'sailing.jpg', content_type: 'image/png')

photo_18 = URI.open('https://res.cloudinary.com/dgn2rtpsl/image/upload/v1630061503/activitease/Graphik_Biohacking_1978x925_800x800_cqmbke.jpg')
activity_18 = Activity.new(
    title: "Bio-Hackers & Transhumanists Thursdays",
    category: "Education",
    address: "Otto-Braun-Straße 65, 10178 Berlin",
    date_from: "09/09/2021 18:00",
    date_to: "09/09/2021 22:00",
    description: "New technologies in the biomedical field and increased popularity of the biohacker movement make transhumanism not only a fascinating idea but also an imminent reality. Let’s discuss, learn and grow together. Bio-Hackers & Transhumanists Thursdays (6-10pm) is to explore together and advance the field of transhumanism by: discussing new emerging technology at every meeting + opportunities and risks, sharing personal experiences and views, discussing with an interdisciplinary community, exchanging tips on literature and movies on transhumanist ideas, BMI and cybernetics and developing event ideas together. What is transhumanism? The transhumanist theory discusses the merge of the human body with technology to overcome disability, improve and augment the human experience and help us interact with each other and with the surrounding technology in ways we can't even imagine. Biohacking is the practical act of using implantable technology, such as magnets, RFID chips and other electronic devices. Also, the increasing popularity of cyberpunk and biohacking as well as my personal experience with different academic fields and some of the hacker communities have led me to believe that both sides would benefit from exchanging experiences in an interdisciplinary setting. For anyone interested in discussing transhumanism. Tech enthusiasts, engineers, biohackers, IT specialists, medical professionals, futurists, anthropologists, philosophers … . Please note: We will not perform body modification or any invasive procedures during the meetings and we are not encouraging anybody to do self-experimentation. The purpose of the meetings is the discussion of technology, media, ethics and members' experiences with the topic. If you have an implant and/or need medical advice, please consult a physician.",
    user_id: user3.id)
activity_18.save!
activity_18.photo.attach(io: photo_18, filename: 'hackerz.jpg', content_type: 'image/png')

p "Created #{Activity.count} activities"
