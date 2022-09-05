# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
Faker::Config.locale = :fr

Article.destroy_all
Rails.env.production? ? ActiveRecord::Base.connection.reset_pk_sequence!('articles')
                        : ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'articles'")  


User.destroy_all
Rails.env.production? ? ActiveRecord::Base.connection.reset_pk_sequence!('users')
                        : ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'users'") 

User.create(email: "julien@mail.com", password:"123456")
User.create(email: "foucauld@mail.com", password:"123456")
User.create(email: "joffrey@mail.com", password:"123456")

10.times do
    User.create(email: Faker::Internet.safe_email, password:"123456")
end


Article.create(title: Faker::Commerce.department,
                content: Faker::Quote.yoda,
                price: rand(1..100000),
                user:User.find(rand(1..13)),
                location: "10 rue de la paix paris",
                lat: 48.8689953,
                lon: 2.3311419,
                furnished:true,
                included_charges: true,
                surface: rand(9..500),
                other_charges: rand(1..300)
            )

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "5 rue vaugirard paris",
    lat: 48.84886,
    lon: 2.340203,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "30 avenue des champs-elysees paris",
    lat: 48.8698899,
    lon: 2.3084521,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "11 rue auber lille",
    lat: 50.631005,
    lon: 3.0409613,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "10 rue einstein tourcoing",
    lat: 50.630194,
    lon: 3.011798,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "15 rue des metiers lille",
    lat: 50.632786,
    lon: 3.059524,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "30 cours georges clemenceau bordeaux",
    lat: 44.842411,
    lon: -0.570437,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "15 rue sainte-catherine bordeaux",
    lat: 44.840598,
    lon: -0.573316,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "40 rue de l ecole normale bordeaux",
    lat: 44.8471639,
    lon: -0.6003414,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "5 place du capitole toulouse",
    lat: 43.6037802,
    lon: 1.4434455,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "20 allée des soupirs toulouse",
    lat: 43.5945488,
    lon: 1.4550663,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "23 boulevard deltour toulouse",
    lat: 43.592341,
    lon: 1.471234,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "15 avenue du mamelon vert cauterêts",
    lat: 42.8891911,
    lon: -0.1168156,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "10 rue abbé maurice totti fréjus",
    lat: 43.4326609,
    lon: 6.736801,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

Article.create(title: Faker::Commerce.department,
    content: Faker::Quote.yoda,
    price: rand(1..100000),
    user:User.find(rand(1..13)),
    location: "20 rue maillol brest",
    lat: 48.4184459,
    lon: -4.451864,
    furnished:true,
    included_charges: true,
    surface: rand(9..500),
    other_charges: rand(1..300)
)

# address = [ 
    # "10 rue de la paix paris",
    # "5 rue vaugirard paris",
    # "30 avenue des champs-elysees paris",
    # "11 rue auber lille",
    # "10 rue einstein lille",
    # "15 rue des metiers lille",
    # "30 cours georges clemenceau bordeaux",
    # "15 rue sainte-catherine bordeaux",
    # "40 rue de l ecole normale bordeaux",
    # "5 place du capitole toulouse",
    # "20 allee des soupirs toulouse",
    # "23 boulevard deltour toulouse",
    # "15 avenue du mamelon vert cauterets",
#     "10 rue abbe totti frejus",
#     "20 rue maillol brest"
# ]
