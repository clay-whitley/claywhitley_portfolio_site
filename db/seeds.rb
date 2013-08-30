# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project1 = Project.create(name: 'PayPal: eBay Search', url: 'localhost', description: 'lorem ipsum')
project2 = Project.create(name: 'PayPal: New Member Tour', url: 'localhost', description: 'lorem ipsum')
project3 = Project.create(name: 'PayPal: Verify Bank Account', url: 'localhost', description: 'lorem ipsum')
project4 = Project.create(name: 'Flashcard App: Get Carded', url: 'http://mcflashy.herokuapp.com/', description: 'lorem ipsum')
project5 = Project.create(name: 'Backbone App: Skill Tracker', url: 'localhost', description: 'lorem ipsum')

project1.screenshots.create(url: '/images/ebay_search.png')
project2.screenshots.create(url: '/images/nmt_slide1.png')
project3.screenshots.create(url: '/images/paypal_verify.png')
project4.screenshots.create(url: '/images/mcflashy.png')
project5.screenshots.create(url: '/images/lexington.png')