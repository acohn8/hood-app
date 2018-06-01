# Neighborhoods

chevychase = Neighborhood.create(hood_name: 'Hawthorne, Barnaby Woods, Chevy Chase')
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
    neighborhood: ivycity,
    password: "alicepass",
    email: "elvis@rocketmail.com",
    tag_line: "Not dead"
    )

frank = User.create(
    username: 'Frank',
    neighborhood: ivycity,
    password: "frankpass",
    email: "frank@hotmail.com",
    tag_line: "Thinking about opening a bar"
    )

gail = User.create(
    username: 'Gail',
    neighborhood: ivycity,
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

bricks = Transaction.create(
    item_name: 'Pallet of Bricks',
    price: 75,
    item_description: 'Quite heavy',
    condition: 'wet',
    user: alice
    )

cordless = Transaction.create(
    item_name: 'Cordless phone',
    price: 50,
    item_description: "Doesn't have that tin can sound like some do",
    condition: 'Needs new batteries',
    user: cliff
    )

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

stroller_adapter = Transaction.create(
    item_name: 'Stroller Adapter',
    price: 200,
    item_description: "Baby Jogger City Mini Double Stroller Car Seat Adapter",
    condition: 'Used, older model',
    user: stacy
    )

# Notices

dan_notice = Notice.create(
    title: 'Starbucks Coffee',
    content: "It's too hot",
    user: dan
    )

stacy_notice = Notice.create(
    title: 'Bird in north stairwell',
    content: "It's still there! Someone call animal control! Please!",
    user: stacy
    )

elivs_notice = Notice.create(
    title: 'Hooded individual',
    content: "I saw a suspicious person in a hoodie walking down my street. Also I will take this time to state that I don't particularly care for the name of this website.",
    user: stacy
    )

need_contractor = Notice.create(
    title: 'Seeking contractor for home renovation',
    content: "Prefer family run businesses",
    user: elvis
    )

babysitter = Notice.create(
    title: 'Babysitter, Pet & Household Helper Available',
    content: "My granddaughter is home from college for the summer and has a reasonable rate",
    user: gail
    )

back_doctor = Notice.create(
    title: 'I need a back doctor recommendation',
    content: "Ouch Ouch",
    user: frank
    )

macbook = Notice.create(
    title: "My macbook is broken. I can't send any internets",
    content: "It's too hot",
    user: darryl
    )

# Comments

bob_comment = Comment.create(
    content: "Starbucks is horrible.",
    user: bob,
    commentable_type: "Notice",
    commentable: dan_notice
    )

dan_comment = Comment.create(
    content: "I would like your bike.",
    user: dan,
    commentable_type: 'Transaction',
    commentable: bike
    )

stacy_comment = Comment.create(
    content: "What medication is it?",
    user: stacy,
    commentable_type: 'Transaction',
    commentable: pills
    )

elvis_comment = Comment.create(
    content: "I went surfing once.",
    user: elvis,
    commentable_type: 'Transaction',
    commentable: surf_board
    )

cliff_comment = Comment.create(
    content: "Did you try turning it off and on again",
    user: cliff,
    commentable_type: 'Notice',
    commentable: macbook
    )