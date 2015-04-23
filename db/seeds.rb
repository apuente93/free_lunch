#Creates administrative user
User.create!(username:  "apuente93",
             email: "apuente@wisc.edu",
             address: "1334 Vilas Ave, Madison, WI 53715",
             password:              "9066278202",
             password_confirmation: "9066278202",
             admin: true)

#Creates Fresh Madison Market store
Store.create!(name:  "Fresh Madison Market",
             address: "703 University Ave, Madison, WI 53715")
             
#Creates Hy-Vee store
Store.create!(name:  "Hy-Vee",
             address: "3801 E Washington Ave, Madison, WI 53704")

#Creates Capitol Centre Market store
Store.create!(name:  "Capitol Centre Market",
             address: "111 N Broom St, Madison, WI 53703")

#Creates Woodman's Food Market store
Store.create!(name:  "Woodman's Food Market",
             address: "3817 Milwaukee St, Madison, WI 53714")
             
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