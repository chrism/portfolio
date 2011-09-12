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

xbox = Project.create(title: 'Orange TV on Xbox', shortname: 'TV on Xbox', summary: '<p>This project involves working with Microsoft to create a compelling Orange TV offer on the Xbox.</p>', description: '<p>In October Microsoft are launching a new interface on the Xbox. It will allow for operators and partners to integrate their services.</p><p>This project involves working with Microsoft to create a compelling Orange TV offer on the Xbox.</p>', projectformat: 'TV', client: 'Orange')
xbox.projectimages = Projectimage.create([{ url: 'xbox-tvtwist.png', mainimage: true }, { url: 'xbox-epg-columns.png', mainimage: false }, { url: 'xbox-epg.png', mainimage: false }])
xbox.categories << Category.find_or_create_by_name('User Journeys')
xbox.categories << Category.find_or_create_by_name('Design')
xbox.categories << Category.find_or_create_by_name('Branding')
xbox.save

museum = Project.create(title: 'Orange Culture - Museums', shortname: 'Museums', summary: '<p>A concept for helping customers find information about exhibitions and museums of interest to them.</p>', description: '<p>A concept for helping customers find information about exhibitions and museums of interest to them.</p>', projectformat: 'Web', client: 'Orange')
museum.projectimages = Projectimage.create([{ url: 'orange-culture-first.png', mainimage: true }, { url: 'orange-culture-second.png', mainimage: false }, { url: 'orange-culture-third.png', mainimage: false }, { url: 'orange-culture-fourth.png', mainimage: false }])
museum.categories << Category.find_or_create_by_name('Concept')
museum.categories << Category.find_or_create_by_name('User Journeys')
museum.categories << Category.find_or_create_by_name('Design')
museum.categories << Category.find_or_create_by_name('Branding')
museum.save

fastdrop = Project.create(title: 'Fastdrop', shortname: 'Fastdrop', summary: '<p>A smart new file-sharing service with easy drag and drop interface.</p>', description: '<p>A smart new file-sharing service with easy drag and drop interface.</p>', projectformat: 'Web', client: 'Software As A Service')
fastdrop.projectimages = Projectimage.create([{ url: 'fastdrop-home.png', mainimage: true }, { url: 'fastdrop-features.png', mainimage: false }, { url: 'fastdrop-logo.png', mainimage: false }])
fastdrop.categories << Category.find_or_create_by_name('Concept')
fastdrop.categories << Category.find_or_create_by_name('User Journeys')
fastdrop.categories << Category.find_or_create_by_name('Design')
fastdrop.categories << Category.find_or_create_by_name('Client Side Development')
fastdrop.save

oms_web = Project.create(title: 'Orange Music Store', shortname: 'Music Store', summary: '<p>A full track download service offering a wide catalogue in several countries.</p>', description: '<p>A full track download service offering a wide catalogue in several countries.</p>', projectformat: 'Web', client: 'Orange')
oms_web.projectimages = Projectimage.create([{ url: 'oms-web-home.png', mainimage: true }])
oms_web.categories << Category.find_or_create_by_name('User Journeys')
oms_web.categories << Category.find_or_create_by_name('Design')
oms_web.categories << Category.find_or_create_by_name('Client Side Development')
oms_web.save

deezer = Project.create(title: 'Deezer Mobile Application', shortname: 'Deezer', summary: '<p>After the Orange & Deezer partnership this project was about integrating Orange customers with the Deezer service as simply as possible.</p>', description: '<p>After the Orange & Deezer partnership this project was about integrating Orange customers with the Deezer service as simply as possible.</p>', projectformat: 'Mobile', client: 'Orange')
deezer.projectimages = Projectimage.create([{ url: 'deezer-one.png', mainimage: true }, { url: 'deezer-two.png', mainimage: false }, { url: 'deezer-three.png', mainimage: false }])
deezer.categories << Category.find_or_create_by_name('Design')
deezer.categories << Category.find_or_create_by_name('Mobile')
deezer.save

ddex = Project.create(title: 'DDEX Organisation Website',
shortname: 'DDEX',
summary: '<p>A new website for the organisation that standardises the formats of digital data.</p>',
description: '<p>A new website for the organisation that standardises the formats of digital data.</p><p>The design has been completely overhauled focusing explaing the organisation and allowing visitors to find documents and further information.</p>',
projectformat: 'Web',
client: 'DDEX')
ddex.projectimages = Projectimage.create([{ url: 'ddex-home.png', mainimage: true }, { url: 'ddex-fullpage.png', mainimage: false }])
ddex.categories << Category.find_or_create_by_name('Concept')
ddex.categories << Category.find_or_create_by_name('User Journeys')
ddex.categories << Category.find_or_create_by_name('Design')
ddex.categories << Category.find_or_create_by_name('Client Side Development')
ddex.save

brocoli = Project.create(title: 'Brocoli Record Label', shortname: 'Brocoli', summary: '<p>A small content managed website produced for an independent experimental music label based in Paris.</p>', description: '<p>A small content managed website produced for an independent experimental music label based in Paris.</p>', projectformat: 'Web', client: 'Record Label')
brocoli.projectimages = Projectimage.create([{ url: 'brocoli-home.png', mainimage: true }])
brocoli.categories << Category.find_or_create_by_name('Design')
brocoli.categories << Category.find_or_create_by_name('Client Side Development')
brocoli.save

nma = Project.create(title: 'Mobile Music Application', shortname: 'Music App', summary: '<p>A simple music service built for lower-end mobile devices.</p>', description: '<p>A simple music service built for lower-end mobile devices.</p>', projectformat: 'Mobile', client: 'Orange')
nma.projectimages = Projectimage.create([{ url: 'nma-first.png', mainimage: true }])
nma.categories << Category.find_or_create_by_name('Design')
nma.categories << Category.find_or_create_by_name('Mobile')
nma.categories << Category.find_or_create_by_name('User Journeys')
nma.save

player = Project.create(title: 'Orange Player', shortname: 'Player', summary: '<p>An integrated media application to allow you to use your mobile phone as a music player.</p>', description: '<p>An integrated media application to allow you to use your mobile phone as a music player.</p>', projectformat: 'Mobile', client: 'Orange')
player.projectimages = Projectimage.create([{ url: 'orange-player-first.png', mainimage: true }])
player.categories << Category.find_or_create_by_name('Design')
player.categories << Category.find_or_create_by_name('Mobile')
player.categories << Category.find_or_create_by_name('User Journeys')
player.categories << Category.find_or_create_by_name('Application Development')
player.save

thepigmen = Project.create(title: 'The Pigmen', shortname: 'Pigmen', summary:'<p>A finance industry website focusing on individuals.</p>', projectformat: 'Web', client: 'Personal',
                            description: '<p>This project was conceived as a response to the build up of the financial crisis and the way in which the media portrayed events.</p><p>The idea was to change the focus <strong>away from institutions and anonymous organisations back to individuals</strong> and try to encourage personal responsibility for their actions</p>'
                          )
thepigmen.projectimages = Projectimage.create([{ url: 'pigmen-home.png', mainimage: true }])
thepigmen.categories << Category.find_or_create_by_name('Concept')
thepigmen.categories << Category.find_or_create_by_name('Design')
thepigmen.categories << Category.find_or_create_by_name('Development')
thepigmen.save


