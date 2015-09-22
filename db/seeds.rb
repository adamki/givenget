# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

items = Item.create([{title: 'pencil', description: 'bulk pencils', price: 1020, image: 'http://globe-views.com/dcim/dreams/pencil/pencil-01.jpg'},
                     {title: 'haircut', description: 'the most stylish', price: 1599, image: 'https://haircuts.com'},
                     {title: 'junk', description: 'some junk', price: 2099, image: 'https://junk.com'},
                     {title: 'internet', description: 'not worth the price', price: 6000, image: 'https://internet.com'},
                     {title: 'dog', description: 'bark', price: 0010, image: 'https://dogs.com'},
                     {title: 'tree', description: 'also bark', price: 2399, image: 'https://trees.com'},
                     {title: 'swimming lessons', description: 'just don\'t drown', price: 0799, image: 'https://swimming-lessons.com'},
                     {title: 'real movies', description: 'nah, its the real thing', price: 1999, image: 'https://bootleg-movies-with-a-slightly-wrong-title.com'},
                     {title: 'gum wrapper', description: 'the worst part of a stick of gum', price: 9999, image: 'https://gum-wrapper.com'},
                     {title: 'stuff', description: 'stuff', price: 2799, image: 'https://stuff.com'},
                     {title: 'cat', description: 'the internet likes these for some reason', price: 0001, image: 'https://cats.com'},
                     {title: 'wet cardboard', description: 'just useless enough to be on the internet', price: 1337, image: 'https://wet-cardboard.com'},
                     {title: 'sleep', description: 'what I should be doing right now', price: 9999, image: 'https://sleep.com'},
                     {title: 'broken fork', description: 'its only kinda broken', price: 2000, image: 'https://broken-fork.com'},
                     {title: 'crate', description: 'put some stuff in them', price: 1279, image: 'https://crates.com'}])
