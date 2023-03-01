puts "🌱 Seeding data..."

    # Product.create(
    #     productName: "Lux White and Teal Lamp Shade",
    #     price: 999.0,
    #     productImage: "https://media.istockphoto.com/id/1270753183/photo/table-lamp-isolated-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=kg5jUP0ZLsn7k6DC2orrADuGKJFFv18so5H_AiPH2Lk="
    # )
    # Product.create(
    #     productName: "Mid-Century Cosy Wingback ArmChair",
    #     price: 599.0,
    #     productImage: "https://media.istockphoto.com/id/1321320075/photo/3d-rendering-of-an-isolated-modern-pale-green-mid-century-cosy-lounge-wingback-armchair.jpg?b=1&s=170667a&w=0&k=20&c=DnhYZHHNh09-MtUA3vLrpV3zqhgJPU1vjOgeRREjsls="
    # )
    
    # Product.create(
    #     productName: "Mini indoor plants",
    #     price: 99.0,
    #     productImage: "https://media.istockphoto.com/id/1368776589/photo/beautiful-artificial-plants-decorations-in-white-pots-isolated-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=fZLc6NZsoiJifpJXxNF5MYB5y3F-s9mfdj9gHqiOLsk="
    # )

    # Product.create(
    #     productName: "14 Ft Artificial Banana Plant",
    #     price: 228.0,
    #     productImage: "https://media.istockphoto.com/id/1372896722/photo/potted-banana-plant-isolated-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=YUsWUtmmiNtJ0AmhT3mC0sgNfcK9c0DPnyoVFnXNChI=",
    # )

    # Product.create(
    #     productName: "Antique Greek Mable Sculpture",
    #     price: 499.99,
    #     productImage: "https://media.istockphoto.com/id/1402483459/photo/antique-broken-marble-head-of-a-greek-youth.jpg?b=1&s=170667a&w=0&k=20&c=yIDr7w9rs7E67XHxFF_pfduTS-04BHAzo2FuAgMx5-g="
    # )
    # Product.create(
    #     productName: "Designer decorative Books",
    #     price: 68.0,
    #     productImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh0pp22fwdNOfGjptFAs_GB7nsSDLNgoC5Fg&usqp=CAU"
    # )
    # Product.create(
    #     productName: "Soft Pillow and Blankets- 6pcs",
    #     price: 120.0,
    #     productImage: "https://media.istockphoto.com/id/1318862189/photo/stylish-soft-pillows-and-blankets-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=ipolDFo7N-z6qNV_sEY4cHKAbBWgM4gZ9CUxJzQgGGM="
    # )
    # Product.create(
    #     productName: "Tambour Dining Set – Black",
    #     price: 599.0,
    #     productImage: "https://www.royalfurniture.ae/wp-content/uploads/2023/01/999x665-2.jpg"
    # )
    # Product.create(
    #     productName: "Throw Pillows",
    #     price: 199.0,
    #     productImage: "https://media.istockphoto.com/id/1340441501/photo/set-of-different-stacked-pillows-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=RdHIGd7src_OSwk0wZWlIB2d-SiCnW5GLmk8hTg-zCc="
    # )
    # Product.create(
    #     productName: "Contemporary Cosy Wingback ArmChair",
    #     price: 599.0,
    #     productImage: "https://media.istockphoto.com/id/933712184/photo/old-retro-sixties-style-chair-in-blue.jpg?s=612x612&w=0&k=20&c=CBbcQYZG8eOu6hyTp-U3wZecvlaI5LuxQg-88nFLASw="
    # )
    # Product.create(
    #     productName: "Lux Pink Cosy Wingback ArmChair",
    #     price: 599.0,
    #     productImage: "https://media.istockphoto.com/id/911638314/photo/armchair.jpg?s=612x612&w=0&k=20&c=0vEJu8tTsY14wp1b20aBLpO7Mv48XWk-7ZaAgxQ2BmQ="
    # )
    # Product.create(
    #     productName: "White Cosy ArmChair",
    #     price: 599.0,
    #     productImage: "https://media.istockphoto.com/id/164771487/photo/white-armchair-with-small-yellow-pillow.jpg?s=612x612&w=0&k=20&c=3hRFnDT8id9RfnuLhBZS2e2xbQOZRVsGxpQsndrErlk="
    # )    
    
# 10.times do
#     Review.create(
#         star_rating: rand(1..5),
#         title: Faker::Lorem.sentence,
#         comment: Faker::Lorem.sentence,
#         product_id: rand(1..12),
#     )
# end

    Review.create(
        star_rating: rand(3..5),
        title: "Amazing store. The products are great quality and value.",
        comment: "Amazing store. The products are great quality and value. Ordering was a breeze and fast shipping.",
        product_id: rand(1..12),
    )

    Review.create(
        star_rating: rand(3..5),
        title:  "The products I received met my expectations",
        comment:    "The products I received met my expectations. Shipping was quick enough and the entirely recyclable box and packing material was GREAT! ",
        product_id: rand(1..12),
    )
        Review.create(
        star_rating: rand(3..5),
        title:   "I buy ALL of my sustainable products from the package free shop." ,
        comment:  " I buy ALL of my sustainable products from the package free shop. I love supporting a fellow New Yorker! I love that the business is woman owned! I align with a lot of the values that Lauren has as well! Basically, if I can give my money to a liberal, badass woman from New York, I will!  "  ,
        product_id: rand(1..12),
    )
        Review.create(
        star_rating: rand(3..5),
        title:  "Great customer service",
        comment:  "Amazing store. The products are great quality and value. Ordering was a breeze and fast shipping." ,
        product_id: rand(1..12),
    )
        Review.create(
        star_rating: rand(3..5),
        title:  "Happy customer ☻",
        comment:  "Amazing store. The products are great quality and value. Ordering was a breeze and fast shipping."  ,
        product_id: rand(1..12),
    )
        Review.create(
        star_rating: rand(3..5),
        title:  "  Great experience",
        comment:  "Great experience  Love the site. Orders are secure and easy.",
        product_id: rand(1..12),
    )
        Review.create(
        star_rating: rand(3..5),
        title: " The website has great information",
        comment:" The website has great information about the interior design and the how to care information of the product. Ships very fast. And OH it's a BEAUTIFUL website!",
        product_id: rand(1..12),
    )
        Review.create(
        star_rating: rand(3..5),
        title: " Great website design. Great products.",
        comment: "Great website design. Great products. Quick shipping  ",
        product_id: rand(1..12),
    )
        Review.create(
        star_rating: rand(3..5),
        title:"Love this company",
        comment:"The professionalism is wonderful and quality products!" ,
        product_id: rand(1..12),
    )
        Review.create(
        star_rating: 2,
        title: "Look more carefully",
        comment: "I should have looked more carefully, one of my items was way smaller than expected. That's on me, but keep an eye on product size descriptions folks",
        product_id: rand(1..12),
    )


puts "🌱 Done Seeding!"