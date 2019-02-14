require 'faker'


# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: "Chyna", email: "Hello@hello.com", password: 12345)
user2 = User.create(name: "Logan", email: "logan@hello.com", password: 12345)

style1 = Style.create(name: "Bohemian", season: "Summer")
style2 = Style.create(name: "Hood Goth", season: "Winter")
style3 = Style.create(name: "Vintage", season: "Year round")

Faker::Avatar.image #=> "https://robohash.org/sitsequiquia.png?size=300x300&set=set1"

Faker::Avatar.image("my-own-slug") #=> "https://robohash.org/my-own-slug.png?size=300x300&set=set1"

Faker::Avatar.image("my-own-slug", "50x50") #=> "https://robohash.org/my-own-slug.png?size=50x50&set=set1"

Faker::Avatar.image("my-own-slug", "50x50", "jpg") #=> "https://robohash.org/my-own-slug.jpg?size=50x50&set=set1"

Faker::Avatar.image("my-own-slug", "50x50", "bmp") #=> "https://robohash.org/my-own-slug.bmp?size=50x50&set=set1"

Faker::Avatar.image("my-own-slug", "50x50", "bmp", "set1", "bg1") #=> "https://robohash.org/my-own-slug.bmp?size=50x50&set=set1&bgset=bg1"
