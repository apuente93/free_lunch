#Creates administrative user
User.create!(username:  "apuente93",
             email: "apuente@wisc.edu",
             address: "1334 Vilas Ave, Madison, WI 53715",
             password:              "9066278202",
             password_confirmation: "9066278202",
             admin: true)

#Creates Fresh Madison Market store
Store.create!(name:  "Fresh Madison Market",
             address: "703 University Ave, Madison, WI 53715",
             image_url: "https://pbs.twimg.com/profile_images/546893605/FMM_Logo2_400x400.png")
             
#Creates Hy-Vee store
Store.create!(name:  "Hy-Vee",
             address: "3801 E Washington Ave, Madison, WI 53704",
             image_url: "http://wkow.images.worldnow.com/images/21316805_SA.gif")

#Creates Capitol Centre Market store
Store.create!(name:  "Capitol Centre Market",
             address: "111 N Broom St, Madison, WI 53703",
             image_url: "http://www.lgbtdirectory.org/Capitol_Centre_Market_2012.jpg")

#Creates Woodman's Food Market store
Store.create!(name:  "Woodman's Food Market",
             address: "3817 Milwaukee St, Madison, WI 53714",
             image_url: "http://nikolainuthouse.com/wp-content/uploads/2013/12/woodmans.jpg")
            
#Creates Copps store 
Store.create!(name:  "Copps",
             address: "620 S Whitney Way, Madison, WI 53711",
             image_url: "http://www.mabaensch.com/wp-content/uploads/2015/02/copps.jpg")

#Creates Pick'n Save store 
Store.create!(name:  "Pick'n Save",
             address: "5709 US-51, McFarland, WI 53558",
             image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRy2JpY8xTffSHIVD728hnIxs0nNHIcGBVKbY1EBxqHv3WHuVxw")
             
#Creates Metcalfe's store 
Store.create!(name:  "Metcalfe's Market",
             address: "Hilldale Shopping Center, 726 N Midvale Blvd, Madison, WI 53705",
             image_url: "http://sabraaitime.com//wp-content/uploads/2014/11/metcalfes-box.png")

#Creates Trader Joe's store 
Store.create!(name:  "Trader Joe's",
             address: "1810 Monroe St, Madison, WI 53711",
             image_url: "http://corneliusnews.net/wp-content/uploads/2014/10/traderjoes_logo.jpg")

#Creates Copps(2) store 
Store.create!(name:  "Copps",
             address: "6800 Century Ave, Middleton, WI 53562",
             image_url: "http://www.mabaensch.com/wp-content/uploads/2015/02/copps.jpg")

#Creates Willy Street Co-op store 
Store.create!(name:  "Willy Street Co-op",
             address: "1221 Williamson St, Madison, WI 53703",
             image_url: "http://www.progressivegrocer.com/sites/default/files/styles/article-full/public/PG%20Articles/Willy%20Street%20Co-op%20Resized.jpg?itok=2OziQe7L")
             
=begin
99.times do |n|
  username  = Faker::Internet.user_name
  email = Faker::Internet.email
  address = Faker::Address.street_address
  password = "password"
  User.create!(username:  username,
               email: email,
               address: address,
               password:              password,
               password_confirmation: password)
end
=end