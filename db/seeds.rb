User.create!(username:  "apuente93",
             email: "apuente@wisc.edu",
             zip_code: 53715,
             password:              "9066278202",
             password_confirmation: "9066278202",
             admin: true)

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
