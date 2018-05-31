chevychase = Neighborhood.create(hood_name: 'Chevy Chase', anc: '3D')
capitolhill = Neighborhood.create(hood_name: 'Capitol Hill', anc: '6B')

bob = User.create(username: 'Bob', address: '3900 Morrison St NW, Washington, D.C. 20015', neighborhood: chevychase, password: "bobpass", email: "bob@yahoo.com", tag_line: "old and swole")

dan = User.create(username: 'Dan', address: '3902 Morrison St NW, Washington, D.C. 20015', neighborhood: chevychase, password: "danpass", email: "dan@aol.com", tag_line: "retired")

stacy = User.create(username: 'StacyLee', address: '1324 E St SE, Washington, D.C. 20003', neighborhood: capitolhill, password: "stacypass", email: "stacylee@hotmail.com", tag_line: "bird in stairwell")

bike_sale = Transaction.create(item_name: 'Road bike', price: 500, item_description: 'Carbon fiber bicycle', condition: 'Used one time!', user: bob)

dan_gripe = Notice.create(title: 'Starbucks Coffee', content: "It's too hot", user: dan)

bob_comment = Comment.create(content: "Starbucks is horrible.", user: bob, commentable_type: "Notice", commentable: dan_gripe)

dan_comment = Comment.create(content: "I would like your bike.", user: dan, commentable_type: "Transaction", commentable: bike_sale)
