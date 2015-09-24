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
                     {title: 'internet', description: 'not worth the price', price: 6016, image: 'https://internet.com'},
                     {title: 'dog', description: 'bark', price: 0010, image: 'https://dogs.com'},
                     {title: 'tree', description: 'also bark', price: 2399, image: 'https://trees.com'},
                     {title: 'swimming lessons', description: 'just don\'t drown', price: 799, image: 'https://swimming-lessons.com'},
                     {title: 'real movies', description: 'nah, its the real thing', price: 1999, image: 'https://bootleg-movies-with-a-slightly-wrong-title.com'},
                     {title: 'gum wrapper', description: 'the worst part of a stick of gum', price: 9999, image: 'https://gum-wrapper.com'},
                     {title: 'stuff', description: 'stuff', price: 2799, image: 'https://stuff.com'},
                     {title: 'cat', description: 'the internet likes these for some reason', price: 1, image: 'https://cats.com'},
                     {title: 'wet cardboard', description: 'just useless enough to be on the internet', price: 1337, image: 'https://wet-cardboard.com'},
                     {title: 'sleep', description: 'what I should be doing right now', price: 9999, image: 'https://sleep.com'},
                     {title: 'broken fork', description: 'its only kinda broken', price: 2000, image: 'https://broken-fork.com'},
                     {title: 'crate', description: 'put some stuff in them', price: 1279, image: 'https://crates.com'}])

categories = Category.create([{title: "Profit"}, {title: "Business"}, {title: "Education"}, {title: "Technology"}, {title: "Sporting goods"}, {title: "Travel"}, {title: "Home Furnishings"}, {title: "Small Business"}])

content = Content.create([
       {name: "Butter",
        payload: "Aliquam feugiat, dui quis iaculis maximus, massa felis tincidunt sem, a imperdiet leo elit vitae urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc iaculis, ante eu pellentesque lacinia, nisl eros lobortis turpis, ut iaculis nibh magna nec ligula. Sed rutrum pulvinar tortor eget cursus. Integer euismod, quam vitae commodo porttitor, ligula lectus accumsan eros, a pretium nunc lectus in odio. Vivamus pellentesque dui mattis augue aliquam pellentesque. Donec egestas dolor mi, a rhoncus ex tempus et. Curabitur ornare nisl a dapibus porta. Morbi ac bibendum lorem, id egestas nunc."
       },
       {name: "Margerine",
        payload: "Maecenas tincidunt, elit nec posuere ullamcorper, justo lectus hendrerit purus, ac venenatis enim ligula eu felis. Nulla facilisi. Integer blandit nibh massa, nec commodo felis venenatis ac. Etiam semper porttitor leo sed sollicitudin. Nulla sed tortor massa. Morbi at orci neque. Curabitur semper sodales pulvinar. Donec luctus pharetra dolor, non porttitor sem facilisis sit amet. Aenean eu lectus purus. Vestibulum luctus at urna id euismod. Donec nulla enim, malesuada ac fermentum in, bibendum sed libero. Proin mattis nec ipsum a condimentum. Nulla eu placerat neque. Sed ac ornare lectus. Phasellus tempor nisi sit amet sem maximus, ullamcorper finibus dolor euismod. Phasellus posuere et ex vel sodales."
       },
        {name: "about-us",
        payload: "A charitable organization singly focused on providing individuals of all backgrounds what they need at a price they can afford, while allowing those who are so situated to give back."
       }




       ])











