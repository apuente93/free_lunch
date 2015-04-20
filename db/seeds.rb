User.create!(username:  "Example User",
             email: "example@wisc.edu",
             zip_code: 55555,
             password:              "foobar",
             password_confirmation: "foobar")

99.times do |n|
  username  = Faker::Internet.user_name
  email = Faker::Internet.email
  zip_code = Faker::Address.zip_code
  password = "password"
  User.create!(username:  username,
               email: email,
               zip_code: zip_code,
               password:              password,
               password_confirmation: password)
end
