exports.categories = [
  {
    _id: 'celebrities & newsmakers'
    , name: 'Celebrities & Newsmakers'
  }
  , {
    _id: 'entertainment'
    , name: 'Entertainment'
  }
  , {
    _id: 'food & drink'
    , name: 'Food & Drink'
  }
  , {
    _id: 'design'
    , name: 'Design'
  }
  , {
    _id: "men's fashion"
    , name: "Men's Fashion"
  }
  , {
    _id: 'technology'
    , name: 'Technology'
  }
  , {
    _id: "women's fashion"
    , name: "Women's Fashion"
  }
]

exports.entities = [

  #######################################################
  # Celebrities & Newsmakers
  #######################################################
  
  {
    name: "Miley Cyrus' VMA Twerk"
    , relativeImagePath: 'MileyCyrus.jpg'
    , relativeRelatedImagePath: 'MileyCyrus.jpg'
    , source: 'MTV.com'
    , url: 'http://www.mtv.com/videos/misc/942064/we-cant-stop-blurred-lines-give-it-2-u-medley.jhtml'
    , price: null
    , originalPrice: null
    , description: "Teddy bears and twerkers took over the MTV stage for Miley Cyrus' performance at MTV's Video Music Awards. Cyrus performed her summer hit \"We Can't Stop\" before Robin Thicke joined her onstage for a special rendition of \"Blurred Lines.\""
    , category: 'celebrities & newsmakers'
    , isProduct: false
  }

  , {
    name: 'Beyonce Flaunts New Bob'
    , relativeImagePath: 'BeyonceBob.jpg'
    , relativeRelatedImagePath: 'BeyonceBob.jpg'
    , source: 'E! Online'
    , url: 'http://www.eonline.com/news/450059/beyonce-flaunts-new-bob-at-first-concert-since-getting-her-haircut'
    , price: null
    , originalPrice: null
    , description: 'Since chopping off her hair a week a half ago, Beyoncé first gave fans a glimpse of her pixie by posting a few selfies on her Instagram account on Aug. 7. Then only a week later, the star was snapped in Miami already sporting a new style: a bob.'
    , category: 'celebrities & newsmakers'
    , isProduct: false
  }

  , {
    name: 'Guy Fieri'
    , relativeImagePath: 'guyfieri_web.jpg'
    , relativeRelatedImagePath: 'guyfieri_web.jpg'
    , source: 'FoodNetwork.com'
    , url: 'http://www.guyfieri.com/'
    , price: null
    , originalPrice:null
    , description: 'Guy Fieri is a television personality working for Food Network. He is an American restaurateur, author, television personality, and game show host.'
    , category: 'celebrities & newsmakers'
    , isProduct: false
  }

  , {
    name: 'Rob Ford'
    , relativeImagePath: 'Mayor-Rob-Ford.jpg'
    , relativeRelatedImagePath: 'Mayor-Rob-Ford.jpg'
    , source: 'TMZ.com'
    , url: 'http://www.tmz.com'
    , price: null
    , originalPrice: null
    , description: "Toronto mayor would have admitted to smoking crack cocaine long before his eventual admission, he says. It's just that no one asked him the question."
    , category: 'celebrities & newsmakers'
    , isProduct: false
  }

  , {
    name: 'Edward Snowden'
    , relativeImagePath: 'snowden.jpg'
    , relativeRelatedImagePath: 'snowden.png'
    , source: 'TheGuardian.com'
    , url: 'http://www.theguardian.com/world/2013/dec/09/edward-snowden-voted-guardian-person-of-year-2013'
    , price: null
    , originalPrice: null
    , description: "Edward Joseph Snowden is an American computer specialist, a former CIA employee, and former NSA contractor who disclosed top secret NSA documents to several media outlets"
    , category: 'celebrities & newsmakers'
    , isProduct: false
  }


  #######################################################
  # Entertainment
  #######################################################

  , {
    name: 'Girls'
    , relativeImagePath: 'girls.jpg'
    , relativeRelatedImagePath: null
    , source: 'HBO.com'
    , url: 'http://www.hbo.com/girls#/index.html/'
    , price: null
    , originalPrice: null
    , description: 'This show is a comic look at the assorted humiliations and rare triumphs of a group of girls in their early 20s. Season 3 is currently in production. '
    , category: 'entertainment'
    , isProduct: false
  }

  , {
    name: 'The Hunger Games: Catching Fire'
    , relativeImagePath: 'hungergames.jpg'
    , relativeRelatedImagePath: 'hungergames.jpg'
    , source: 'RottenTomatoes.com'
    , url: 'http://www.rottentomatoes.com/m/the_hunger_games_catching_fire/'
    , price: 11.00
    , originalPrice: 49.00
    , description: "The Hunger Games: Catching Fire is a 2013 American science fiction adventure film based on Suzanne Collins' novel, Catching Fire, the second installment in The Hunger Games trilogy."
    , category: "entertainment"
    , isProduct: false
  }

, {
    name: 'Macklemore wins 4 Grammys'
    , relativeImagePath: 'macklemore.jpg'
    , relativeRelatedImagePath: 'macklemore.png'
    , source: 'News.Yahoo.com'
    , url: 'http://news.yahoo.com/macklemore-ryan-lewis-win-4-grammys-awards-012323594.html'
    , price: 11.00
    , originalPrice: 49.00
    , description: "Macklemore & Ryan Lewis might shop at thrift shops, but they now have a ton of Grammy gold. The rap duo won four Grammy Awards so far Sunday, including best new artist and rap album for \"The Heist,\" beating efforts from Kendrick Lamar, Jay Z, Kanye West and Drake."
    , category: "entertainment"
    , isProduct: false
  }

, {
    name: 'Downton Abbey'
    , relativeImagePath: 'downton.jpg'
    , relativeRelatedImagePath: null
    , source: 'PBS.org'
    , url: 'http://www.pbs.org/wgbh/masterpiece/downtonabbey/'
    , price: 11.00
    , originalPrice: 49.00
    , description: "Downton Abbey is a British period drama television series created by Julian Fellowes and co-produced by Carnival Films and Masterpiece."
    , category: "entertainment"
    , isProduct: false
  }
  
  , {
    name: 'NFL Super Bowl XLVIII'
    , relativeImagePath: 'superbowl.jpg'
    , relativeRelatedImagePath: null
    , source: 'ESPN.com'
    , url: 'http://www.superbowl.com/'
    , price: 11.00
    , originalPrice: 49.00
    , description: "Who's going to win the game: Seattle Seahawks or Denver Broncos? Find out Sunday, February 2, 6:30 PM on FOX."
    , category: "entertainment"
    , isProduct: false

  }

  #######################################################
  # Food & Drink
  #######################################################

  , {
    name: 'Cronut'
    , relativeImagePath: 'cronut.jpg'
    , relativeRelatedImagePath: 'cronut.jpg'
    , url: 'http://dominiqueansel.com/cronut-101/'
    , price: 3.00
    , originalPrice: 3.00
    , description: "Cronut = the shape, fried-ness, and creamy interior of a doughnut + the flaky, delicate pastry layers of a croissant. The Cronut's creator is the French pastry chef Dominique Ansel, of Dominique Ansel Bakery in New York.Ansel is a 2013 James Beard Award finalist for Outstanding Pastry Chef. And if there is any justice in the world, he should receive a Lifetime Achievement award for blessing this nation with the Cronut."
    , category: "food & drink"
    , isProduct: false
    , source: "Buzzfeed"
  }
  
  , {
    name: "Nostalgia Electrics Electric Nut Butter Maker"
    , url: 'http://www.jcpenney.com/nostalgia-electrics%25e2%2584%25a2-electric-nut-butter-maker/prod.jump?ppId=pp5002831385&catId=cat100240104&subcatId=cat100240016&deptId=dept20000011&Nao=24&pN=2&dimCombo=null&dimComboVal=null&colorizedImg=DP0429201317015160M.tif'
    , relativeImagePath: 'DP0429201317015160M.jpg'
    , relativeRelatedImagePath: null
    , source: 'JCPenney.com'
    , price: 49.99
    , originalPrice: 75.00
    , description: "Satisfy your family's sweet and salty cravings at home when you whip up a batch of nut butter in this easy-to-use appliance."
    , category: "food & drink"
    , isProduct: true
  }

  , {
    name: "Beer"
    , url: 'http://en.wikipedia.org/wiki/Beer'
    , relativeImagePath: 'beer.jpg'
    , relativeRelatedImagePath: 'beer.jpg'
    , source: 'Wikipedia.org'
    , price: null
    , originalPrice: null
    , description: 'Beer is an alcoholic beverage produced by the saccharification of starch and fermentation of the resulting sugar.'
    , category: 'food & drink'
    , isProduct: false

  }

  , {
    name: "Doritos Locos Tacos"
    , relativeImagePath: 'doritos-tacoslocos.jpg'
    , relativeRelatedImagePath: 'doritos-tacoslocos.jpg'
    , url: 'https://www.tacobell.com/doritoslocostacos'
    , source: 'TacoBell.com'
    , price: 2.99
    , originalPrice: 2.99
    , description: 'A Taco Supreme® made with premium seasoned beef, crisp lettuce, diced juicy red ripe tomatoes, real cheddar cheese, topped with cool reduced-fat sour cream, in a shell made from Nacho Cheese Doritos® Chips.'
    , category: 'food & drink'
    , isProduct: false

  }

  , {
    name: "Red Quinoa & Black Bean Salad"
    , relativeImagePath: 'red-quinoa-black-bean-salad.jpg'
    , relativeRelatedImagePath: 'red-quinoa-black-bean-salad.jpg'
    , source: 'TastyKitchen.com'
    , url: 'http://tastykitchen.com/recipes/salads/red-quinoa-and-black-bean-salad/'
    , price: null
    , originalPrice: null
    , description: 'This Red Quinoa and Black Bean Salad is packed with colorful vegetables, black beans, and a lime-cumin dressing.'
    , category: 'food & drink'
    , isProduct: false

  }

   , {
    name: "Doughscuit: A glazed Doughnut & Biscuit hybrid"
    , relativeImagePath: 'doughscuit.jpg'
    , relativeRelatedImagePath: null
    , source: 'NPR.org'
    , url: 'http://www.npr.org/blogs/thesalt/2014/01/28/267602675/meet-the-cronuts-humble-offspring-the-doughscuit'
    , price: null
    , originalPrice: null
    , description: 'Half doughnut, half biscuit, the Doughscuit is a mix of doughnut-fried sweetness and crumbly biscuitness. '
    , category: 'food & drink'
    , isProduct: false

  }

   , {
    name: "Make a Superbowl \"Snackadium\""
    , relativeImagePath: 'snackadium.jpg'
    , relativeRelatedImagePath: 'snackadium.png'
    , source: 'The Kitchn.com'
    , url: 'http://www.thekitchn.com/why-everyone-should-make-snackadiums-for-the-super-bowl-199603'
    , price: null
    , originalPrice: null
    , description: 'Everyone should make a Snackadium for the Super Bowl. Not many events in life encourage you to make giant structures out of chips, dips, sandwiches, and vegetables. This is your opportunity to make a touchdown, of sorts, in culinary prowess. '
    , category: 'food & drink'
    , isProduct: false

  }


  #######################################################
  # Design
  #######################################################
  
  , {
    name: 'Conran Elder Chair'
    , url: 'http://www.jcpenney.com/for-the-home/furniture/living-room-sets/design-by-conran-collection/design-by-conran-elder-chair/prod.jump?ppId=pp5002360203&catId=cat1002350039&dimCombo=null&dimComboVal=null&colorizedImg=DP0207201317030598M.tif'
    , relativeImagePath: 'conran-chair.jpg'
    , relativeRelatedImagePath: 'conran-chair.jpg'
    , source: 'JCPenney.com'
    , price: 735.00
    , originalPrice: 1225.00
    , description: "Inspired by classic British upholstery pieces, this beautifully tailored scroll-arm chair is supreme in comfort and generous in size. Purchase with the Brooke sofa for the full Conran classic British living room look."
    , category: 'design'
    , isProduct: true

  }

  , {
    name: 'Cosmic Shower Curtain'
    , relativeImagePath: 'cosmicshowercurtain.jpg'
    , relativeRelatedImagePath: 'cosmicshowercurtain.jpg'
    , source: 'Fab.com'
    , url: 'http://fab.com/product/cosmic-shower-curtain-421593/?ref=browse&pos=23'
    , price: 50.99
    , originalPrice: null
    , description: "Made of woven polyester, the textile will dress up your bathtub with ease—just don't try squeezing it into a frame."
    , category: "design"
    , isProduct: false

  }
  
  , {
    name: 'Studio Ombre Table Lamp'
    , relativeImagePath: 'DP0321201318515300C.jpg'
    , relativeRelatedImagePath: null
    , source: 'JCPenney.com'
    , url: 'http://www.jcpenney.com/gift-registry/wedding/add-our-gifts/home-decor/lighting-lamps/studio-ombre-table-lamp/prod.jump?ppId=pp5002280034&catId=cat100240024&deptId=dept20000011&Ns=PHL&Nao=120&pN=6&dimCombo=null&dimComboVal=null&colorizedImg=DP1210201217031396M.tif'
    , price: 58.00
    , originalPrice: 145.00
    , description: 'Eye-catching table lamp from Studio provides a main source of light for any room.'
    , category: "design"
    , isProduct: true
  }
  
, {
    name: 'Bucky Deer Trophy Head'
    , relativeImagePath: 'cardboarddeer.jpg'
    , relativeRelatedImagePath: null
    , source: 'Fab.com'
    , url: 'http://fab.com/product/bucky-deer-trophy-head-149442/?ref=reco%7Cdepartment%7Cpop%7C1%7C8%7C1'
    , price: 58.00
    , originalPrice: 145.00
    , description: 'Laser-cut for precision, this make-believe taxidermy figure is the tamest way to express your killer style. A snap to throw together and begging to be customized (think glitter or paint), this recycled cardboard beast apes the real thing and will turn any room into a wild animal den.'
    , category: "design"
    , isProduct: true
  }

, {
    name: 'Team USA Sochi 2014 Uniforms'
    , relativeImagePath: 'sochiuniform.jpg'
    , relativeRelatedImagePath: null
    , source: 'SportsIllustrated.com'
    , url: 'http://sportsillustrated.cnn.com/-olympics/news/20140123/team-usa-sochi-olympics-uniforms-opening-ceremony/'
    , price: null
    , originalPrice: null
    , description: 'Ralph Lauren unveiled the uniforms for the Opening Ceremony on Thursday, showing of a strongly patriotic sweater in a color palette of red, white and navy. The meticulously knit patchwork cardigan highlighted with handcrafted details and emblazoned with stars and spirited graphics pairs with a cream cotton turtleneck sweater, slim-fitting white fleece athletic pants, sporty black leather boots with red laces and a cotton belt accented with patriotic graphics. And there is a knit cap to match the sweater.'
    , category: "design"
    , isProduct: false
  }
  
  #######################################################
  # Men's Fashion
  #######################################################

  , {
      name: "Levi's Classic Camo Windbreaker"
      , relativeImagePath: 'levisjacket.jpg'
      , relativeRelatedImagePath: 'mens-fashion.png'
      , source: 'JCPenney.com'
      , url: 'http://www.jcpenney.com/'
      , price: 60.00
      , originalPrice: 60.00
      , description: "Be discovered, not disguised, in the eye-catching Classic Camo Windbreaker. The packable hood and zip pockets offer everyday versatility and convenience, while the unique camouflage print adds street-savvy style."
      , category: "men's fashion"
      , isProduct: true
  }

  , {
      name: "St. John's Bay® Button-Front Plaid Poplin Shirt"
      , relativeImagePath: 'stjohnsbaypoplin.jpg'
      , relativeRelatedImagePath: 'mens-fashion.png'
      , source: 'JCPenney.com'
      , url: 'http://www.jcpenney.com/'
      , price: 19.99
      , originalPrice: 19.99
      , description: "Just like the color, your appreciation for this classic-fit, all-cotton shirt won't fade over time. Soft, comfortable and relaxed, this is the plaid shirt that  every guy needs in his closet."
      , category: "men's fashion"
      , isProduct: true
  }

  , {
      name: "St. John's Bay Parka"
      , relativeImagePath: 'stjohnsbayparka.jpg'
      , relativeRelatedImagePath: 'mens-fashion.png'
      , source: 'JCPenney.com'
      , url: 'http://www.jcpenney.com/men/sale/st-johns-bay-colorblock-anorak-jacket/prod.jump?ppId=pp5003050399&catId=cat100420007&deptId=dept20000014&topDim=Product+Type&topDimvalue=outerwear-coats&dimCombo=Product+Type%7C&dimComboVal=outerwear-coats%7C&currentDim=Product+Type&currentDimVal=outerwear-coats&colorizedImg=DP0621201317025180M.tif&urlState=/men/shop-brands/st-john-s-bay/outerwear-coats/_/N-1nscknZ1z140hx/cat.jump'
      , price: 49.99
      , originalPrice: 100.00
      , description: 'Our sporty anorak jacket keeps you warm and dry in matching colors.'
      , category: "men's fashion"
      , isProduct: true
  }

  , {
    name: 'Stacy Adams Dumont Mens Cap Toe Lace Up Oxfords'
    , url: 'http://www.jcpenney.com/shoes/stacy-adams-dumont-mens-cap-toe-lace-up-oxfords/prod.jump?ppId=pp5002960694&catId=cat100250175&deptId=dept20000018&dimCombo=null&dimComboVal=null&colorizedImg=DP0515201317003672M.tif'
    , relativeImagePath: 'DP0515201317003686M.jpg'
    , relativeRelatedImagePath: 'mens-fashion.png'
    , source: 'JCPenney.com'
    , price: 64.99
    , originalPrice: 85.00
    , description: "Sturdy leather construction is accented by a luxurious suede vamp on these mens' wingtip oxfords, making them softer than the average pieces of workplace menswear."
    , category: "men's fashion"
    , isProduct: true
  }

 , {
    name: 'New Balance Limited Edition Sneakers'
    , url: 'https://www.jcrew.com/mens_category/JCrewingoodcompany/NewBalance/PRDOVR~B0955/B0955.jsp'
    , relativeImagePath: 'newbalance.jpg'
    , relativeRelatedImagePath: 'mens-fashion.png'
    , source: 'JCrew.com'
    , price: 166.00
    , originalPrice: 166.00
    , description: 'A blast of welcome heat and sunshine in the midst of grey winter doldrums, the New Balance Inferno is a limited-release collaboration between two iconic American brands.'
    , category: "men's fashion"
    , isProduct: true
  }

  , {
    name: 'The Cotton Chamois Button Down'
    , url: 'http://us.gant.com/the-cotton-chamois-button-down-mineral-green'
    , relativeImagePath: 'chamois-button-down.jpg'
    , relativeRelatedImagePath: 'mens-fashion.png'
    , source: 'Gant.com'
    , price: 84.00
    , originalPrice: 84.00
    , description: 'The Michael Bastian Cotton Chamois button-down shirt in cotton with a slim fit and slightly longer sleeves, featuring a button-down collar, buttoned chest pocket, contrasting buttons, and a GANT-embroidered locker loop on the back.'
    , category: "men's fashion"
    , isProduct: true
  }


  #######################################################
  # Products
  #######################################################

  # , {
  #   name: 'Impressa C5 Dual Espresso Maker'
  #   , url: 'http://www.jcpenney.com/for-the-home/kitchen-dining/small-appliances/coffee-tea/impressa-c5-dual-espresso-maker/prod.jump?ppId=1e35cab&catId=cat100240104&subcatId=cat100240016&deptId=dept20000011&Nao=24&pN=2&dimCombo=null&dimComboVal=null&colorizedImg=0900631b81e48350M.tif'
  #   , relativeImagePath: '0900631b81e48350M.jpg'
  #   , relativeRelatedImagePath: '0900631b81e48350M.jpg'
  #   , source: 'JCPenney.com'
  #   , price: 999.99
  #   , originalPrice: 1250.00
  #   , description: 'The Impressa Dual Espresso Maker gives you that savory hot beverage that starts off your mornings right or lets you impressively entertain guests.'
  #   , category: 'products'
  #   , isProduct: true
  # }



  #######################################################
  # Technology
  #######################################################
  
  , {
    name: 'Amazon Prime Air'
    , relativeImagePath: 'amazone-primeair-drone.jpg'
    , relativeRelatedImagePath: 'amazone-primeair-drone.jpg'
    , source: 'CBSNews.com'
    , url: 'http://www.cbsnews.com/news/amazons-jeff-bezos-looks-to-the-future/'
    , price: 99.99
    , originalPrice: 120.00
    , description: "Amazon's secret R&D project aimed at delivering packages to your doorstep by \"octocopter\" mini-drones with a mere 30-minute delivery time."
    , category: 'technology'
    , isProduct: false

  }

  , {
    name: 'Samsung Galaxy S4'
    , relativeImagePath: 'galaxy_s.jpg'
    , relativeRelatedImagePath: 'galaxy_s.jpg'
    , source: 'CNET.com'
    , url: 'http://reviews.cnet.com/samsung-galaxy-s4/'
    , price: 299.99
    , originalPrice: 299.99
    , description: 'Its blazing quad-core processor, colorful 5-inch HD screen, sharp-shooting 13-megapixel camera, and mile-high stack of software extras make the Galaxy S4 the most powerful superphone anywhere in the world.'
    , category: 'technology'
    , isProduct: false

  }


  #######################################################
  # Women's Fashion
  #######################################################

  , {
    name: 'Chiffon Blouse'
    , relativeImagePath: 'chiffon-blouse.jpg'
    , relativeRelatedImagePath: 'womens-fashion.png'
    , url: 'http://www.hm.com/us/product/19274?article=19274-D#article=19274-B'
    , price: 19.95
    , originalPrice: 19.95
    , description: "Sleeveless, gently fitted blouse in chiffon with a draped front section. Small stand-up collar with metal button, concealed buttons at front, and rounded hem with small slits at sides.<ul><li>100% polyester.</li><li>Machine wash warm</li><li>Imported</li></ul>"
    , category: "women's fashion"
    , isProduct: true
    , source: "HM.com"
  }

    
  , {
    name: 'Jeffrey Cambell Quincy Heel'
    , relativeImagePath: 'jeffrey-cambell-quincy-heel.jpg'
    , relativeRelatedImagePath: 'womens-fashion.png'
    , url: 'http://www.nastygal.com/shoes-heels/jeffrey-campbell-quincy-lace-up-heel/'
    , price: 175.00
    , originalPrice: 175.00
    , description: "Make an entrance in these awesome leather booties featuring a peep toe and lace up detailing at back. Zip closure at side, stacked wooden heel. Cushioned insole, fully lined. By Jeffrey Campbell<ul><li>Genuine Leather Upper/Lining, Synthetic Sole </li><li>Height: 7.75\"/19.5cm</li><li>Heel Height: 3.5\"/9cm </li><li>Imported</li></ul>"
    , category: "women's fashion"
    , isProduct: true
    , source: "NastyGal.com"
  }

  , {
    name: 'Drawstring-Waist Taffeta Skirt'
    , url: 'http://www.jcpenney.com/women/joe-fresh/joe-fresh%25e2%2584%25a2-drawstring-waist-taffeta-skirt/prod.jump?ppId=pp5003320111&catId=cat100250097&deptId=dept20000013&dimCombo=null&dimComboVal=null&colorizedImg=DP1004201317041364M.tif'
    , relativeRelatedImagePath: 'womens-fashion.png'
    , relativeRelatedImagePath: 'drawstring-waist-taffeta-skirt.jpg'
    , price: 28.99
    , originalPrice: 39.00
    , description: "Give your look ladylike personality with our short taffeta skirt that's tied with a charming ribbon-drawstring waist.<ul><li>elastic waist</li><li>side-seam pockets</li><li>sits at waist</li><li>19\” length</li><li>polyester</li><li>washable</li><li>imported</li></ul>"
    , category: "women's fashion"
    , isProduct: true
    , source: 'JCPenney.com'
  }

  , {
    name: "Vegan Vest"
    , relativeImagePath: "vegan-vest.jpg"
    , relativeRelatedImagePath: "womens-fashion.png"
    , url: "http://www.freepeople.com/clothes-jackets-vegan-leather-jackets/vegan-vest-30022354/_/PRODUCTOPTIONIDS/0B6E9CAD-A8F4-4CCF-8A37-466219F4EA95/"
    , price: 140.00
    , originalPrice: 140.00
    , description: "Supple vegan leather vest. Tailored fit with asymmetrical zip closure and two front zip pockets. Shorter in the back.<ul><li>*Vegan Leather</li><li>Lining: 100% Polyester</li><li>Machine Wash Cold</li><li>Import</li></ul>"
    , category: "women's fashion"
    , isProduct: true
    , source: "FreePeople.com"
  }

  , {
    name: 'Skinny Trousers'
    , relativeImagePath: 'skinny-trousers.jpg'
    , relativeRelatedImagePath: 'womens-fashion.png'
    , url: 'http://www.zara.com/us/en/woman/trousers/skinny-trousers-c565234p1709527.html'
    , price: 69.00
    , originalPrice: 69.00
    , description: "Silky, drapey romper from Pins and Needles with a swingy, ruffled top and relaxed shorts. Slit at the back with button closure; step-in construction. Fully lined.<ul><li>Polyester, spandex </li><li>Hand wash</li><li>Imported</li></ul>"
    , category: "women's fashion"
    , isProduct: true
    , source: "Zara.com"
  }

  , {}

]