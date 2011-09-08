# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


p1 = Project.create(title: 'The Pigmen', description: 'blah blah blah')
p1.projectimages = Projectimage.create([{ url: 'test1.jpg' }, { url: 'test2.jpg' }])
p1.save

p2 = Project.create(title: 'Brocoli', description: 'Site for an independent experimental music label based in Paris.')
p2.projectimages = Projectimage.create([{ url: 'test4.jpg' }, { url: 'test5.jpg' }, { url: 'test6.jpg' }])
p2.save