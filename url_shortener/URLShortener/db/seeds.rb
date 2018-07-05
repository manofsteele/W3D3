# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: "rob@rob.com")
User.create(email: "liz@liz.com")
User.create(email: "david@david.com")


ShortenedUrl.create(user_id: 2, short_url: ShortenedUrl.random_code, long_url: "www.stackoverflow.com")
ShortenedUrl.create(user_id: 2, short_url: ShortenedUrl.random_code, long_url: "www.appacademy.io")
ShortenedUrl.create(user_id: 3, short_url: ShortenedUrl.random_code, long_url: "www.mealpal.com")

Visit.create(user_id: 2, shortened_url_id: 2)
Visit.create(user_id: 3, shortened_url_id: 2)
Visit.create(user_id: 2, shortened_url_id: 3)
Visit.create(user_id: 4, shortened_url_id: 2)
