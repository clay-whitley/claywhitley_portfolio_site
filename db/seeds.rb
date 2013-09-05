# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Project.delete_all
Screenshot.delete_all
Skill.delete_all
Post.delete_all
Tag.delete_all

user = User.create(email: "clay.aaron.whitley@gmail.com", password: "portfoliopassword", password_confirmation: "portfoliopassword")

project1 = Project.create(name: 'PayPal: eBay Search', url: 'localhost', description: 'lorem ipsum')
project2 = Project.create(name: 'PayPal: New Member Tour', url: 'localhost', description: 'lorem ipsum')
project3 = Project.create(name: 'PayPal: Verify Bank Account', url: 'localhost', description: 'lorem ipsum')
project4 = Project.create(name: 'Flashcard App: Get Carded', url: 'http://mcflashy.herokuapp.com/', description: 'lorem ipsum')
project5 = Project.create(name: 'Backbone App: Skill Tracker', url: 'localhost', description: 'lorem ipsum')

project1.skills.create([{name: 'HTML'},{name: 'CSS'},{name: 'JavaScript'}])
project2.skills.create([{name: 'HTML'},{name: 'CSS'},{name: 'jQuery'},{name: 'jQuery Mobile'}])
project3.skills.create([{name: 'HTML'},{name: 'CSS'},{name: 'jQuery'}])
project4.skills.create([{name: 'HTML'},{name: 'CSS'},{name: 'jQuery'},{name: 'AJAX'},{name: 'Sinatra'}])
project5.skills.create([{name: 'HTML'},{name: 'CSS'},{name: 'Backbone.js'},{name: 'Sinatra'}])

project1.screenshots.create(url: '/images/ebay_search.png')
project2.screenshots.create(url: '/images/nmt_slide1.png')
project3.screenshots.create(url: '/images/paypal_verify.png')
project4.screenshots.create(url: '/images/mcflashy.png')
project5.screenshots.create(url: '/images/lexington.png')

20.times do
  post = Post.create(title: Faker::Company.catch_phrase, content: Faker::Lorem.sentences(20).join(' '), posted_date: Date.today)
  post.tags.create([{name: Faker::Lorem.word}, {name: Faker::Lorem.word}])
end
