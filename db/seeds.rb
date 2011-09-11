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
xbox.categories << Category.find_or_create_by_name('User Journeys')
xbox.categories << Category.find_or_create_by_name('Design')
xbox.categories << Category.find_or_create_by_name('Branding')
xbox.save

fastdrop = Project.create(title: 'Fastdrop', description: '<p>Stuff about fastdrop</p>', projectformat: 'Web', client: 'Software As A Service')
fastdrop.projectimages = Projectimage.create([{ url: 'fastdrop-home.png', mainimage: true }, { url: 'fastdrop-features.png', mainimage: false }, { url: 'fastdrop-logo.png', mainimage: false }])
fastdrop.categories << Category.find_or_create_by_name('Design')
fastdrop.categories << Category.find_or_create_by_name('Client Side Development')
fastdrop.save

oms_web = Project.create(title: 'Orange Music Store', description: '<p>Updates to the application</p>', projectformat: 'Web', client: 'Orange')
oms_web.projectimages = Projectimage.create([{ url: 'oms-web-home.png', mainimage: true }])
oms_web.categories << Category.find_or_create_by_name('User Journeys')
oms_web.categories << Category.find_or_create_by_name('Design')
oms_web.categories << Category.find_or_create_by_name('Client Side Development')
oms_web.save

deezer = Project.create(title: 'Deezer Mobile Application', description: '<p>Updates to the application</p>', projectformat: 'Mobile', client: 'Orange')
deezer.projectimages = Projectimage.create([{ url: 'deezer-one.png', mainimage: true }, { url: 'deezer-two.png', mainimage: false }, { url: 'deezer-three.png', mainimage: false }])
deezer.categories << Category.find_or_create_by_name('Design')
deezer.categories << Category.find_or_create_by_name('Mobile')
deezer.save

brocoli = Project.create(title: 'Brocoli', description: '<p>Site for an independent experimental music label based in Paris.</p>', projectformat: 'Web', client: 'Record Label')
brocoli.projectimages = Projectimage.create([{ url: 'brocoli-home.png', mainimage: true }])
brocoli.categories << Category.find_or_create_by_name('Design')
brocoli.categories << Category.find_or_create_by_name('Client Side Development')
brocoli.save

nma = Project.create(title: 'Mobile Music Application', description: '<p>A simple music service built for lower-end devices</p>', projectformat: 'Mobile', client: 'Orange')
nma.projectimages = Projectimage.create([{ url: 'nma-first.png', mainimage: true }])
nma.categories << Category.find_or_create_by_name('Design')
nma.categories << Category.find_or_create_by_name('Mobile')
nma.categories << Category.find_or_create_by_name('User Journeys')
nma.save

player = Project.create(title: 'Orange Player', description: '<p>A simple application for using your mobile as a music player</p>', projectformat: 'Mobile', client: 'Orange')
player.projectimages = Projectimage.create([{ url: 'orange-player-first.png', mainimage: true }])
player.categories << Category.find_or_create_by_name('Design')
player.categories << Category.find_or_create_by_name('Mobile')
player.categories << Category.find_or_create_by_name('User Journeys')
player.categories << Category.find_or_create_by_name('Application Development')
player.save

thepigmen = Project.create(title: 'The Pigmen', projectformat: 'Web', client: 'Personal',
                            description: '<p>This project was conceived as a response to the build up of the financial crisis and the way in which the media portrayed events.</p><p>The idea was to change the focus <strong>away from institutions and anonymous organisations back to individuals</strong> and try to encourage personal responsibility for their actions</p>'
                          )
thepigmen.projectimages = Projectimage.create([{ url: 'pigmen-home.png', mainimage: true }])
thepigmen.categories << Category.find_or_create_by_name('Concept')
thepigmen.categories << Category.find_or_create_by_name('Design')
thepigmen.categories << Category.find_or_create_by_name('Development')
thepigmen.save


