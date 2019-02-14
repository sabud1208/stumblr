require 'faker'


# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Lizzy Le", email: "lizzyiscool@gmail.com", password: "lizzy", bio: "I like cats.")
user1 = User.create(name: "OBJ", email: "ilooklikeobj@obj.obj", password: "obj", bio: "I like OBJ.")
user1 = User.create(name: "Cassidy Samelian", email: "somealien@obj.momo", password: "john", bio: "I like to dance with cats.")

style1 = Style.create(name: "Bohemian", season:"All Year", image_url: "https://cdn.shopify.com/s/files/1/0271/4967/products/NICOLAMIDIDRESS_IVORYFLORAL_5.jpg?v=1548810418")
style2 = Style.create(name: "Vintage", season:"All Year", image_url: "https://cdn.vox-cdn.com/thumbor/rUXOeAHEZvfZ6OVBb9X6VxHROIg=/0x0:768x960/1720x0/filters:focal(0x0:768x960):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/10091537/unique_vintage.jpg")
style3 = Style.create(name: "Chic", season:"All Year", image_url: "https://assets.vogue.com/photos/5c64a311c4ae532d5a9d9219/master/pass/_FIO0098.jpg")
style4 = Style.create(name: "Sexy", season:"All Year", image_url: "https://i.pinimg.com/564x/53/28/92/532892ee83571df711f259a7f96122c9.jpg?b=t")
style5 = Style.create(name: "Tomboy", season:"All Year", image_url: "https://66.media.tumblr.com/tumblr_m54jwpwKE41qd6ii0o1_500.jpg")
style6 = Style.create(name: "Preppy", season:"All Year", image_url: "https://chouchoudressblog.files.wordpress.com/2013/09/article3-2.jpg")



Faker::Avatar.image #=> "https://robohash.org/sitsequiquia.png?size=300x300&set=set1"

Faker::Avatar.image("my-own-slug") #=> "https://robohash.org/my-own-slug.png?size=300x300&set=set1"

Faker::Avatar.image("my-own-slug", "50x50") #=> "https://robohash.org/my-own-slug.png?size=50x50&set=set1"

Faker::Avatar.image("my-own-slug", "50x50", "jpg") #=> "https://robohash.org/my-own-slug.jpg?size=50x50&set=set1"

Faker::Avatar.image("my-own-slug", "50x50", "bmp") #=> "https://robohash.org/my-own-slug.bmp?size=50x50&set=set1"

Faker::Avatar.image("my-own-slug", "50x50", "bmp", "set1", "bg1") #=> "https://robohash.org/my-own-slug.bmp?size=50x50&set=set1&bgset=bg1"
