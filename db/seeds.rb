# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 User.destroy_all
 Topic.destroy_all
 Review.destroy_all
 Post.destroy_all
 Comment.destroy_all
user1 = User.create!(username: "YogaNerd", password_digest: "password1234" , password_confirmation: "password1234" , age: 26, city: "San Francisco", occupation: "Project Manager", bio: "ddoijfo sldijfowij saoijfoawijv waoifjoawijv e ogfovo 34534tgf wf fdfsalij")
user2 = User.create!(username: "DogLover42", password_digest: "rubygemfifty3", password_confirmation: "password1234" ,age: 33, city: "Los Angeles", occupation: "Ruby Engineer", bio: "dljigow;ij osidgvjowirv rwoigj owvowijjv")
user3 = User.create!(username: "LakerFan24", password_digest: "abracadabra", password_confirmation: "password1234" ,age: 23, city: "Austin", occupation: "Teacher", bio: "ldkjfwijvojnrwognoigj algnwrjvoiwov e;lfgknorwoijgo4 aeovino;rawivowi")
user4 = User.create!(username: "HikesRBullshit", password_digest: "24hrcouchlady", password_confirmation: "password1234" ,age: 44, city: "Pawnee", occupation: "Parks Administrator", bio: "ldkjvowij w;gijvowijv ao;sidgjvowijv")

love = Topic.create!(topic: "Love")
work = Topic.create!(topic: "Work")
finance = Topic.create!(topic: "Finance")
diy = Topic.create!(topic: "DIY")
nutrition = Topic.create!(topic: "Nutrition")
fitness = Topic.create!(topic: "Fitness")
spirituality = Topic.create!(topic: "Spirituality")
sex = Topic.create!(topic: "Sex")
parenting = Topic.create!(topic: "Parenting")

review1 = Review.create!(body: "This person knows what they're talkin bout", reviewee: user1, reviewer: user2)
review2 = Review.create!(body: "Ban this person from your website.  Very disrespectful", reviewee: user2, reviewer:user3)
review3 = Review.create!(body: "Thank you for your kind words", reviewee: user3, reviewer: user4)
review4 = Review.create!(body: "Your story was very inspiring to me!!!", reviewee: user4, reviewer: user1)

post1 = Post.create!(title: "My kid won't stop biting me!", body: "sijfowijeofnie fijonefij o3ijrfo ijnfovijovijroij fo;eijfov iwrjo;vji o;invo; wnvrw j;ovn;vnek fnbvorwij ovrj", user: user1 , topic: love)
post2 = Post.create!(title: "What do I do about my nagging boss?", body: "odifjonw ijefoiw oijoidjo;gij o ioirow9u 09-2309r-2fv v owijo ij2oiejf njhorijghwoeijg 2v", user: user2, topic: finance)
post3 = Post.create!(title: "I've got too many credit cards and cant manage the payments", body: "diojfon wiefj 2u n0jowijvoeji20f9un jvoir3jg0[r9ju309iuf4u n0jvreihjvoirhj3o ", user: user3, topic: spirituality)
post4 = Post.create!(title: "Considering Intermittent Fasting...", body: "ldijfowije[fin j2oijoeifwj no ij oi2ejfo ijno ijo ij2voiejov;irjo iwjof1   oijeoiwjvoi2 mj3i jv92ufvjroi vo;wiejhgofi24jo voijvo;wijro;igjq24ouf4jv hijoirehjgoi42hjfo ", user: user4 , topic: parenting)
post5 = Post.create!(title: "My husband initiated sex while i was sleeping", body: "fiwjef n2jiefo vjo2ijefp2jf ijvoijrvijrpojp2j4p9tu9u039", user: user2, topic: sex)

comment1 = Comment.create!(body: "dwjf jog3ij4t9-2 mfeprgojp'3 ojgpo jnjro3jigp42jgpn jp24jgp23gjn ", post: post1, user_id: user4)
comment2 = Comment.create!(body: "9ur0g9u09n jor3ijog j039u9g 949j0940gj0439utj 0njg09rj30gnj03u9gnvj3", post: post2, user_id: user1)
comment3 = Comment.create!(body: "r3g nor3jg o3ji0gj ngojpo3jgo jo3ijogj09gjonmjgorijg no oirjgoi3joj j oiejogijo  oijrgoij3ojgo3jg", post: post3, user_id: user3)
comment4 = Comment.create!(body: "rgjo4jrnp[ bj5goi j5o;4ijgoj9", post: post4, user_id: user3)
comment5 = Comment.create!(body: "geihjrgorvvvoirjgo3ijo ijgo3ijgo ij3oj4ot9", post: post5, user_id: user3)
comment6 = Comment.create!(body: "rg35g       3vfejvore ij oj9gj54bjoej9p9jgpe9jg9o 9urg 9uoejboq;ghh'ajga'jopekperokjgpoekpojovnouwhubunkjnviotjot4jg ngleirjgo43jo9uj4gvnqigno;riot49", post: post5, user_id: user2)