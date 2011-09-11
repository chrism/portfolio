# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.delete_all
User.delete_all

chris = User.create(email: 'chrismasters@gmail.com', password: 'test')

thepigmen = Project.create(title: 'The Pigmen', projectformat: 'Web', client: 'Personal',
                            description: '<p>This project was conceived as a response to the build up of the financial crisis and the way in which the media portrayed events.</p><p>The idea was to change the focus <strong>away from institutions and anonymous organisations back to individuals</strong> and try to encourage personal responsibility for their actions</p>'
                          )
thepigmen.projectimages = Projectimage.create([{ url: 'test1.png' }])
thepigmen.categories << Category.find_or_create_by_name('Concept')
thepigmen.categories << Category.find_or_create_by_name('Design')
thepigmen.categories << Category.find_or_create_by_name('Development')
thepigmen.save

brocoli = Project.create(title: 'Brocoli', description: 'Site for an independent experimental music label based in Paris.', projectformat: 'Web', client: 'Record Label')
brocoli.projectimages = Projectimage.create([{ url: 'test4.png' }])
brocoli.categories << Category.find_or_create_by_name('Design')
brocoli.categories << Category.find_or_create_by_name('Client Side Development')
brocoli.save



