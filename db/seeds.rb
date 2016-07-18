sponge = Item.find_or_create_by!({
  name: "sponges"
  })

scissors = Item.find_or_create_by!({
  name: "scissors"
  })

flour = Item.find_or_create_by!({
  name: "flour"
  })

water = Item.find_or_create_by!({
  name: "water"
  })

food_coloring = Item.find_or_create_by!({
  name: "food coloring"
  })

ziploc_bags = Item.find_or_create_by!({
  name: "Ziploc bags"
  })

scotch_tape = Item.find_or_create_by!({
  name: "Scotch tape"
  })

bubbles = Item.find_or_create_by!({
  name: "bubbles"
  })

plastic_bottle = Item.find_or_create_by!({
  name: "plastic bottles"
  })

mesh_fruit_bag = Item.find_or_create_by!({
  name: "mesh fruit bag"
  })

duct_tape = Item.find_or_create_by!({
  name: "duct tape"
  })

tempera_paint = Item.find_or_create_by!({
  name: "tempera paint"
  })

salad_spinner = Item.find_or_create_by!({
  name: "salad spinner"
  })

paper = Item.find_or_create_by!({
  name: "paper"
  })

paintbrush = Item.find_or_create_by!({
  name: "paint brushes"
  })

toilet_paper_roll = Item.find_or_create_by!({
  name: "toilet paper rolls"
  })

rice = Item.find_or_create_by!({
  name: "rice"
  })

glue_sticks = Item.find_or_create_by!({
  name: "glue sticks"
  })

tangrams = Activity.find_or_create_by!({
  title: "Sponge Tangrams",
  description: "Tangrams are a fun and easy way to work on visual perception and visual motor integration skills through play.  These sponge tangrams are a quick DIY activity that kids will love.  The whole project will cost you $1, making it a creative and frugal way to play while sneaking in therapeutic and developmental skills.

  Tangram activities have a component that builds skills needed for handwriting so this activity is a fun one for working on written work through play.

  There are many ways to use tangrams to help with handwriting, and these sponge tangrams can definitely be used in those activities.  Try adding them to a low container with water for a multi-sensory approach.",
  instructions: 'Use a permanent marker to make a cutting template on the sponges.  You will want to draw lines like shown here.  Mark a "K", "L", and "H" on the sponge to create rectangles, triangles, and squares.

  Next, cut the sponge with a pair of kitchen shears.

  And, just like that, you are ready to play!

  Use the sponge tangrams to build shapes, copy forms, and practice form recognition and form constancy.  This is a great exercise in visual motor integration and visual perceptual skills.',
  image: "sponge-tangrams-activity-kids.png",
  url: "http://www.sugaraunts.com/2016/07/sponge-tangrams.html"
  })

Activityitem.find_or_create_by!({
  activity_id: tangrams.id,
  item_id: sponge.id
  })

Activityitem.find_or_create_by!({
  activity_id: tangrams.id,
  item_id: scissors.id
  })

squishy_bags = Activity.find_or_create_by!({
  title: "Squishy Sensory Bags",
  description: "Squishy bags are perfect for sensory play without the mess. They are cheap and easy to make and your child will enjoy manipulating and playing with them.

  The squishy bag is perfect for practicing letters, numbers, name writing, drawing pictures, shapes and words. Your child can practice hand and finger movements for pre-writing development on the squishy bag.

  There are so many different ways to make squishy bags, I have seen others use glue, paint, hair gel, baby oil and shaving cream. Today I am sharing with you how we made our Squishy Sensory Bags using flour, water and food colouring.",
  instructions: "Place flour into a small bowl.
  Add food coloring.
  Now add the water.
  Mix until all the ingredients are well blended.
  Scoop the flour mixture into the plastic Ziploc bag.
  Before fastening the end, place the squishy bag onto a flat surface.
  Gently push out any excess air out to avoid air bubbles.
  Press the clips of the bag closed and ensure there are no holes.
  Place sticky tape along the opening to secure the opening.

  Play ideas:
  Place the squishy bag onto a light table/panel.
  Use your finger, soft paint brush or a cotton wool bud (Q-Tip) to write your name, letters, numbers and shapes.
  Explore the squishy bag for a sensory experience, watch what happens as you squeeze, squish, press, etc.  Cause and effect, one action creates a another reaction.",
  image: "Squishy-Sensory-Bags-for-pre-writing-activities.jpg",
  url: "http://www.learning4kids.net/2015/06/30/how-to-make-squishy-sensory-bags/"
  })

Activityitem.find_or_create_by!({
  activity_id: squishy_bags.id,
  item_id: flour.id,
  quantity: "1 cup"
  })

Activityitem.find_or_create_by!({
  activity_id: squishy_bags.id,
  item_id: water.id,
  quantity: "6 tablespoons"
  })

Activityitem.find_or_create_by!({
  activity_id: squishy_bags.id,
  item_id: food_coloring.id,
  })

Activityitem.find_or_create_by!({
  activity_id: squishy_bags.id,
  item_id: ziploc_bags.id,
  })

Activityitem.find_or_create_by!({
  activity_id: squishy_bags.id,
  item_id: scotch_tape.id,
  })

bubble_blower = Activity.find_or_create_by!({
  title: "DIY Recycled Bottle Bubble Blower",
  description: "My kids love blowing bubbles and making your own solution is so easy with just a couple of kitchen ingredients. Making your own blowers from pipe cleaners or socks like this bubble snake is just as easy. We decided to put a twist on the bottle snake version by using a mesh fruit bag. The whole blower becomes a fun recycled project. Talk about turning trash to treasure! At least from a kid's perspective.",
  instructions: "Cut your bottle in half with scissors, add your mesh over the half with the opening and secure the sides with duct tape.

  Add some bubble solution in a shallow bowl so your bottle will fit over. Dip in the solution and then blow!",
  image: "recycled-bottle-bubble-blower.jpg",
  url: "http://www.hellowonderful.co/post/DIY-RECYCLED-BOTTLE-BUBBLE-BLOWER"
  })

Activityitem.find_or_create_by!({
  activity_id: bubble_blower.id,
  item_id: bubbles.id
  })

Activityitem.find_or_create_by!({
  activity_id: bubble_blower.id,
  item_id: plastic_bottle.id
  })

Activityitem.find_or_create_by!({
  activity_id: bubble_blower.id,
  item_id: scissors.id
  })

Activityitem.find_or_create_by!({
  activity_id: bubble_blower.id,
  item_id: mesh_fruit_bag.id
  })

Activityitem.find_or_create_by!({
  activity_id: bubble_blower.id,
  item_id: duct_tape.id
  })

spinner_art = Activity.find_or_create_by!({
  title: "Spinner Art",
  description: "Have you tried making spin art in a salad spinner yet?  It’s so fun!  Last week at preschool, I was in charge of the spin art station.  Instead of round paper cut to fit the salad spinner, we made hearts.",
  instructions: "The how-to is simple:  Put your paper in the spinner.  Squeeze/drop/dribble on some paint – slightly watered-down tempera works great.  Now, put the lid on and spin, spin, spin!

  Take the lid off and ooh and ahh over the finished product.  Have lots of paper ready, because this activity begs to be repeated over and over and over again.",
  image: "spin_art_hearts.jpg",
  url: "http://lets-explore.net/blog/2009/02/spin-art-hearts/"
  })

Activityitem.find_or_create_by!({
  activity_id: spinner_art.id,
  item_id: paper.id
  })

Activityitem.find_or_create_by!({
  activity_id: spinner_art.id,
  item_id: salad_spinner.id
  })

Activityitem.find_or_create_by!({
  activity_id: spinner_art.id,
  item_id: tempera_paint.id
  })

color_bag_mixing = Activity.find_or_create_by!({
  title: "Color Bag Mixing/Color Smushing",
  description: 'A really easy, mess-free sensory activity for toddlers that also teaches color to kids is color bag mixing, or what I like to call "Color Smushing."',
  instructions: "In a zip top plastic bag squirt two different primary colors of paint. For example, red and yellow or yellow and blue, or red and blue.Tightly zip the bag closed. You can tape it shut if you really don’t want your toddler to open it. Hand the bag over to your toddler and he can smash the colors together, creating a new color.

  When your child is finished smushing, open the bag up and paint! This is such a great way to learn about color and a fun alternative to mixing colors with a brush. It’s a sensory activity that extends into art!",
  image: "color-bag-mixing.jpg",
  url: "http://www.whatdowedoallday.com/2008/01/color-smushing.html"
  })

Activityitem.find_or_create_by!({
  activity_id: color_bag_mixing.id,
  item_id: ziploc_bags.id
  })

Activityitem.find_or_create_by!({
  activity_id: color_bag_mixing.id,
  item_id: tempera_paint.id
  })

Activityitem.find_or_create_by!({
  activity_id: color_bag_mixing.id,
  item_id: paintbrush.id
  })

Activityitem.find_or_create_by!({
  activity_id: color_bag_mixing.id,
  item_id: paper.id
  })

stamped_heart = Activity.find_or_create_by!({
  title: "Stamped Heart Art",
  description: "How can you not like abstract art that’s by a toddler? Make a heart stamp with a toilet paper roll.",
  instructions: "All you need to do this is save a toilet paper roll the next time you empty one! Crease it in the down the side (the long way) to make a point and then crease the other side of it inward to make it a heart shape.

  Dip in the end of it in red, pink, or purple paint. Then just stamp on the dipped end onto a piece of paper.

  Let your toddler (or even an older child would love this) just stamp away. No right or wrong way here. They just get the satisfaction of making a heart and how very cool that is!",
  image: "stamped-heart-art.jpg",
  url: "http://handsonaswegrow.com/stamped-heart/"
  })

Activityitem.find_or_create_by!({
  activity_id: stamped_heart.id,
  item_id: paper.id
  })

Activityitem.find_or_create_by!({
  activity_id: stamped_heart.id,
  item_id: tempera_paint.id
  })

Activityitem.find_or_create_by!({
  activity_id: stamped_heart.id,
  item_id: toilet_paper_roll.id
  })

tp_roll_maracas = Activity.find_or_create_by!({
  title: "TP Roll Maracas",
  description: "Make some music with these colorful maracas crafted from recycled toilet paper rolls! This project is a great sensory activity for young children.",
  instructions: "Cover the end of one toilet paper roll with duct tape.

  Fill the toilet paper roll halfway with rice. We poured some rice in a bowl and scooped the toilet paper roll instide. This part of the craft is a great sensory activity for little hands.

  After you have rice inside your roll, cover the other end of the roll with duct tape.

  Once your maraca is sealed, make a sleeve for it from another toilet paper roll so you can paint it. Slit another roll all the way down one side and wrap it around the rice-filled maraca.

  Glue the outer roll around the maraca. Then paint the maraca sleeve any way you wish! We started with a solid base color and then painted on a design or pattern.

  Once your maracas are dry, make some music!",
  image: "tp-maracas.jpg",
  url: "http://www.pbs.org/parents/crafts-for-kids/tp-roll-maracas-video/"
  })

Activityitem.find_or_create_by!({
  activity_id: tp_roll_maracas.id,
  item_id: toilet_paper_roll.id
  })

Activityitem.find_or_create_by!({
  activity_id: tp_roll_maracas.id,
  item_id: duct_tape.id
  })

Activityitem.find_or_create_by!({
  activity_id: tp_roll_maracas.id,
  item_id: tempera_paint.id
  })

Activityitem.find_or_create_by!({
  activity_id: tp_roll_maracas.id,
  item_id: paintbrush.id
  })

Activityitem.find_or_create_by!({
  activity_id: tp_roll_maracas.id,
  item_id: rice.id
  })

Activityitem.find_or_create_by!({
  activity_id: tp_roll_maracas.id,
  item_id: glue_sticks.id
  })

Activityitem.find_or_create_by!({
  activity_id: tp_roll_maracas.id,
  item_id: scissors.id
  })
