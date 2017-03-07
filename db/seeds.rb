# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sections = Section.create([{ name: 'Ruby Basics' },
                           { name: 'HTML'},
                           { name: 'CSS'}
                          ])

posts = Post.create([{
                       link: "https://launchschool.com/books/ruby/read/intro_exercises",
                       description: "Start on this to understand basic ruby concepts",
                       section_id: 1
                     },
                     {
                       link: "http://guides.rubyonrails.org/getting_started.html",
                       description: "Start on this to familiarize yourself with rails",
                       section_id: 1
                     },
                     {
                       link: "https://www.w3schools.com/html/",
                       description: "Read this to understand basic HTML",
                       section_id: 2
                     },
                     {
                       link: "https://www.w3schools.com/css/default.asp",
                       description: "Basic CSS. Read all.",
                       section_id: 3
                     },
                     {
                       link: "http://getbootstrap.com/",
                       description: "Test with Bootstrap. Read the getting started link.",
                       section_id: 3
                     },
                     {
                       link: "hhttps://www.w3schools.com/bootstrap/default.asp",
                       description: "Read bootstrap CSS for clarity",
                       section_id: 3
                     }
                    ])
