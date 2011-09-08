# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.delete_all

thepigmen = Project.create(title: 'The Pigmen', description: 'blah blah blah')
thepigmen.projectimages = Projectimage.create([{ url: 'test1.jpg' }, { url: 'test2.jpg' }])
thepigmen.categories << Category.find_or_create_by_name('Web')
thepigmen.save

brocoli = Project.create(title: 'Brocoli', description: 'Site for an independent experimental music label based in Paris.')
brocoli.projectimages = Projectimage.create([{ url: 'test4.jpg' }, { url: 'test5.jpg' }, { url: 'test6.jpg' }])
brocoli.categories << Category.find_or_create_by_name('Web')
brocoli.save



