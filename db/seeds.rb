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

posts = Post.create([{ link: "https://launchschool.com/books/ruby/read/intro_exercises" , description: "Start on this to understand basic ruby concepts"},
                     { link: "http://guides.rubyonrails.org/getting_started.html" , description: "Start on this to familiarize yourself with rails"},
                     { link: "https://www.w3schools.com/html/", description: "Read this to understand basic HTML"},
                     { link: "https://www.w3schools.com/css/default.asp", description: "Basic CSS. Read all."},
                     { link: "http://getbootstrap.com/", description: "Test with Bootstrap. Read the getting started link."},
                     { link: "hhttps://www.w3schools.com/bootstrap/default.asp", description: "Read bootstrap CSS for clarity"}
                    ])
