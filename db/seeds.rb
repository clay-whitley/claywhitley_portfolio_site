# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project1 = Project.create(name: 'Backbone', url: 'localhost', description: 'lorem ipsum')
project2 = Project.create(name: 'PayPal', url: 'localhost', description: 'lorem ipsum')
project3 = Project.create(name: 'Rails', url: 'localhost', description: 'lorem ipsum')

project1.screenshots.create(url: '/images/ebay_search.png')
project2.screenshots.create(url: '/images/nmt_slide1.png')