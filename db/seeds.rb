# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(title: 'blah', body: 'blahblah', date_posted: '2017-06-12')
User.create(email: 'la@la.com', password: 'asdf', password_confirmation: 'asdf')
Technology.create(name: 'Ember.js', link: 'emberjs.com')
Project.create(title: 'Need-a-Couch',
               link: 'https://laurpaik.github.io/need-a-couch/',
               front_end: 'https://github.com/laurpaik/need-a-couch',
               back_end: 'https://github.com/laurpaik/need-a-couch-api',
               description: 'Need-a-Couch is a couchsurfing app that allows users to post when they need somewhere to stay for a night. This was my first Ember App, so I had an adventure building the structure on the front-end. For this project, I built a paper prototype to organize my components and routes. I used this as a map throughout the project, and it definitely saved me from getting lost in the code whenever I hit a wall. Documentation on my planning process and problem-solving strategy can be found in the front-end repo.',
               image: 'https://s3.amazonaws.com/laurpaik/portfolio/needacouch')
