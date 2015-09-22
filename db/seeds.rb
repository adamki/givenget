# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

items = Item.create([{title: 'pencil', description: 'bulk pencils', price: 1020, image: 'http://globe-views.com/dcim/dreams/pencil/pencil-01.jpg'},
                     {title: 'haircut', description: 'the most stylish', price: 1599, image: 'https://haircuts.com'}])
