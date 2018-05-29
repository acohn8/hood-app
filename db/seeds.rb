chevychase = Neighborhood.create(hood_name: 'Chevy Chase', anc: '3D')

bob = User.create(username: 'Bob', address: '3900 Morrison St NW, Washington, D.C. 20015', neighborhood: chevychase)

dan = User.create(username: 'Dan', address: '3902 Morrison St NW, Washington, D.C. 20015', neighborhood: chevychase)

bike_sale = Transaction.create(item_name: 'Road bike', price: 500, item_description: 'Carbon fiber bicycle', condition: 'Used one time!', user: bob)

dan_gripe = Notice.create(title: 'Starbucks Coffee', content: "It's too hot", user: dan)

bob_comment = Comment.create(content: "Starbucks is horrible.", user: bob)

 dan_comment = Comment.create(content: "I would like your bike.", user: dan)

 dan_comment.update_attribute(:commentable, bike_sale)

 bob_comment.update_attribute(:commentable, dan_gripe)

