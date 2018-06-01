# Neighborhoods

chevychase = Neighborhood.create(hood_name: 'Chevy Chase')
capitolhill = Neighborhood.create(hood_name: 'Capitol Hill, Lincoln Park')
ivycity = Neighborhood.create(hood_name: 'Ivy City, Arboretum, Trinidad, Carver Langston')
# dupont = Neighborhood.create(hood_name: 'Dupont Circle, Connecticut Avenue/K Street')
# anacostia = Neighborhood.create(hood_name: 'Historic Anacostia')


# Users

bob = User.create(
    username: 'Bob',
    neighborhood: chevychase,
    password: 'bobpass',
    email: 'bob@yahoo.com',
    tag_line: 'Go ask Alice'
    )

dan = User.create(
    username: 'Dan',
    neighborhood: chevychase,
    password: 'danpass',
    email: 'dan@aol.com',
    tag_line: 'Retired'
    )

stacy = User.create(
    username: 'StacyLee',
    neighborhood: chevychase,
    password: "stacypass",
    email: "stacylee@hotmail.com",
    tag_line: "Bird in stairwell"
    )

alice = User.create(
    username: 'Alice',
    neighborhood: capitolhill,
    password: "alicepass",
    email: "alice@rocketmail.com",
    tag_line: "Looking for my Bob"
    )

cliff = User.create(
    username: 'Cliff',
    neighborhood: capitolhill,
    password: "stacypass",
    email: "cliffy@hotmail.com",
    tag_line: "Thinking about opening a bar"
    )

darryl = User.create(
    username: 'Darryl',
    neighborhood: capitolhill,
    password: "stacypass",
    email: "theD@newmail.com",
    tag_line: "Just Darryl"
    )

elvis = User.create(
    username: 'Elvis',
    neighborhood: anacostia,
    password: "alicepass",
    email: "elvis@rocketmail.com",
    tag_line: "Not dead"
    )

frank = User.create(
    username: 'Frank',
    neighborhood: anacostia,
    password: "frankpass",
    email: "frank@hotmail.com",
    tag_line: "Thinking about opening a bar"
    )

gail = User.create(
    username: 'Gail',
    neighborhood: anacostia,
    password: "gailpass",
    email: "gaily@newmail.com",
    tag_line: "A great wind blows"
    )


# Transactions

bike = Transaction.create(
    item_name: 'Road bike',
    price: 500,
    item_description: 'Carbon fiber bicycle',
    condition: 'Used one time!',
    user: bob
    )

pills = Transaction.create(
    item_name: 'Prescription Medication',
    price: 100,
    item_description: 'It may be expired',
    condition: 'Half-filled bottles',
    user: dan
    )

ceiling_fan = Transaction.create(
    item_name: 'Ceiling Fans (10)',
    price: 200,
    item_description: 'Great deal I got with the Fan Man',
    condition: 'Unopened',
    user: stacy
    )

bricks = T = Transaction.create(
    item_namPallet of Bricksbike',
    pri75 500,
    item_descriptioQuite heavyycle',
    conditiowetime!',
    usalice
    )
 cordlesssale = Transaction.create(
    item_namCordless phonebike',
    pri50 500,
    item_descripti"Doesn't have that tin can sound like some do"cle',
    conditioNeeds new batteriesime!',
    uscliff     )
 plants = Transaction.create(
    item_name: 'Assorted plants',
    price: 20,
    item_description: "I'm allergic to one of them, don't know which",
    condition: 'Alive, mostly',
    user: darryl
    )

rotary = Transaction.create(
    item_name: 'Rotary Phone',
    price: 45,
    item_description: 'The kind you spin the dial, whippersnappers',
    condition: 'Antique',
    user: elvis
    )
surf_board = Transaction.create(
    item_name: 'Surf Board',
    price: 200,
    item_description: "It's yellow",
    condition: 'Well-loved',
    user: frank
    )

# Notices

dan_notice = Notice.create(
    title: 'Starbucks Coffee',
    content: "It's too hot",
    user: dan)

stacy_notice = Notice.create(
    title: 'Bird in north stairwell',
    content: "It's still there! Someone call animal control! Please!",
    user: stacy)

elivs_notice = Notice.create(
    title: 'Starbucks Coffee',
    content: "It's too hot",
    user: dan
    )

dan_gripe = Notice.create(
    title: 'Starbucks Coffee',
    content: "It's too hot",
    user: dan
    )

dan_gripe = Notice.create(
    title: 'Starbucks Coffee',
    content: "It's too hot",
    user: dan
    )

dan_gripe = Notice.create(
    title: 'Starbucks Coffee',
    content: "It's too hot",
    user: dan
    )



# dan_gripe = Notice.cre
    ate(title: 'Starbucks Coffe
    e', content: "It's too ho
    t", user:
     d
# Comments
a

# bob_comment = Comment.cre
    ate(content: "Starbucks is horrible
    .", user: b
    ob, commentable_type: "Notic
    e", commentable: dan_g
    ripdan_comment = Comment.create(
    content: "I would like your bike.",
    user: dan,
    commentable_type: 'Transaction',
    commentable: bike_sale
    )

dan_comment = Comment.create(
    content: "I would like your bike.",
    user: dan,
    commentable_type: 'Transaction',
    commentable: bike_sale
    )

dan_comment = Comment.create(
    content: "I would like your bike.",
    user: dan,
    commentable_type: 'Transaction',
    commentable: bike_sale
    )



# dan_comment = Comment.cre
    ate(content: "I would like your bike
    .", user: d
    an, commentable_ty'e: "Transac'i
    n", commentable: bike_
    sale)
