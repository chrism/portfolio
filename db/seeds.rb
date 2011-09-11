# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.delete_all
Projectimage.delete_all
User.delete_all

chris = User.create(email: 'chrismasters@gmail.com', password: 'test')

xbox = Project.create(title: 'Orange TV on Xbox', description: '<p>Bringing Orange TV services to the Xbox platform</p>', projectformat: 'TV', client: 'Orange')
xbox.projectimages = Projectimage.create([{ url: 'xbox-tvtwist.png', mainimage: true }, { url: 'xbox-epg-columns.png', mainimage: false }, { url: 'xbox-epg.png', mainimage: false }])
xbox.categories << Category.find_or_create_by_name('Design')
xbox.categories << Category.find_or_create_by_name('User Journeys')
xbox.categories << Category.find_or_create_by_name('Branding')
xbox.save

fastdrop = Project.create(title: 'Fastdrop', description: '<p>Stuff about fastdrop</p>', projectformat: 'Web', client: 'Software As A Service')
fastdrop.projectimages = Projectimage.create([{ url: 'fastdrop-home.png', mainimage: true }, { url: 'fastdrop-features.png', mainimage: false }, { url: 'fastdrop-logo.png', mainimage: false }])
fastdrop.categories << Category.find_or_create_by_name('Design')
fastdrop.categories << Category.find_or_create_by_name('Client Side Development')
fastdrop.save

thepigmen = Project.create(title: 'The Pigmen', projectformat: 'Web', client: 'Personal',
                            description: '<p>This project was conceived as a response to the build up of the financial crisis and the way in which the media portrayed events.</p><p>The idea was to change the focus <strong>away from institutions and anonymous organisations back to individuals</strong> and try to encourage personal responsibility for their actions</p>'
                          )
thepigmen.projectimages = Projectimage.create([{ url: 'pigmen-home.png', mainimage: true }])
thepigmen.categories << Category.find_or_create_by_name('Concept')
thepigmen.categories << Category.find_or_create_by_name('Design')
thepigmen.categories << Category.find_or_create_by_name('Development')
thepigmen.save

brocoli = Project.create(title: 'Brocoli', description: '<p>Site for an independent experimental music label based in Paris.</p>', projectformat: 'Web', client: 'Record Label')
brocoli.projectimages = Projectimage.create([{ url: 'brocoli-home.png', mainimage: true }])
brocoli.categories << Category.find_or_create_by_name('Design')
brocoli.categories << Category.find_or_create_by_name('Client Side Development')
brocoli.save


