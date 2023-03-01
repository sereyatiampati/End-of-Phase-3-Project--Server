# Interior Design Web App API

This is an API for Interior Design Website. It is a simple web API where you make CRUD calls to a server to organize a interior design app.

[demo here](https://github.com/sereyatiampati/End-of-Phase-3--Project--client)

## Front-end Interior Design Web App Interface

You can use this API in conjunction with my front-end interor design app [see the repo](https://github.com/sereyatiampati/End-of-Phase-3--Project--client)

## Technologies Used in API

- Ruby
- ActiveRecord
- SQLite3
- Rack

## How To Use

Install it and run:

```sh
bundle install

# create migrations with activerecord
rake db:migrate

# if you would like to use seed data
rake db:seed

# start server
rake server
```

Rake server uses port 9292 by default.

## Relationships within Database

### Products

- has many reviews


### Reviews

- belongs to a product

## Example Calls You Can Make With API

### Products

You can make all CRUD calls for the products database.

- CREATE products
- GET/RETRIEVE all products
- GET/RETRIEVE individual product
- DELETE a product
- UPDATE a product

#### Example: Retrieve All Products

Shows you products and all of the reviews associated with the product

```js

fetch('http://localhost:9292/products')
      .then((res) => res.json())
      .then((products) => products)


// output
[
    {
        "id": 1,
        "productName": "Lux White and Teal Lamp Shade",
        "price": 999,
        "productImage": "https://media.istockphoto.com/id/1270753183/photo/table-lamp-isolated-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=kg5jUP0ZLsn7k6DC2orrADuGKJFFv18so5H_AiPH2Lk=",
        "reviews": [
            {
                "id": 2,
                "star_rating": 5,
                "title": "Great items",
                "comment": "Consequatur doloribus eligendi dicta.",
                "product_id": 1,
                "created_at": "2023-03-01T02:19:42.411Z",
                "updated_at": "2023-03-01T02:22:25.346Z"
            },
            {
                "id": 6,
                "star_rating": 4,
                "title": "Great Online Support ",
                "comment": "Earum quam tempora illum.",
                "product_id": 1,
                "created_at": "2023-03-01T02:19:42.621Z",
                "updated_at": "2023-03-01T03:17:11.968Z"
            },
            {
                "id": 14,
                "star_rating": 4,
                "title": "Great customer service",
                "comment": "Amazing store. The products are great quality and value. Ordering was a breeze and fast shipping.",
                "product_id": 1,
                "created_at": "2023-03-01T05:55:32.311Z",
                "updated_at": "2023-03-01T05:55:32.311Z"
            }
        ]
    },
    {
        "id": 2,
        "productName": "Mid-Century Cosy Wingback ArmChair",
        "price": 599,
        "productImage": "https://media.istockphoto.com/id/1321320075/photo/3d-rendering-of-an-isolated-modern-pale-green-mid-century-cosy-lounge-wingback-armchair.jpg?b=1&s=170667a&w=0&k=20&c=DnhYZHHNh09-MtUA3vLrpV3zqhgJPU1vjOgeRREjsls=",
        "reviews": [
            {
                "id": 7,
                "star_rating": 5,
                "title": "I absolutely loved my purchase ",
                "comment": "Eos alias aut deserunt.",
                "product_id": 2,
                "created_at": "2023-03-01T02:19:42.675Z",
                "updated_at": "2023-03-01T03:17:21.111Z"
            },
            {
                "id": 22,
                "star_rating": 4,
                "title": "Quality interior decor items",
                "comment": "Loved everything i got from this shop",
                "product_id": 2,
                "created_at": "2023-03-01T14:42:25.842Z",
                "updated_at": "2023-03-01T14:42:25.842Z"
            }
        ]
    }
]
```

#### Example: Retrieve a Specific Product

Shows you all reviews associated with the product

```js
fetch('http://localhost:9292/product/1')
      .then((res) => res.json())
      .then((product) => (product))


// output
{
    "id": 1,
    "productName": "Lux White and Teal Lamp Shade",
    "price": 999,
    "productImage": "https://media.istockphoto.com/id/1270753183/photo/table-lamp-isolated-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=kg5jUP0ZLsn7k6DC2orrADuGKJFFv18so5H_AiPH2Lk=",
    "reviews": [
        {
            "id": 2,
            "star_rating": 5,
            "title": "Great items",
            "comment": "Consequatur doloribus eligendi dicta.",
            "product_id": 1,
            "created_at": "2023-03-01T02:19:42.411Z",
            "updated_at": "2023-03-01T02:22:25.346Z"
        },
        {
            "id": 6,
            "star_rating": 4,
            "title": "Great Online Support ",
            "comment": "Earum quam tempora illum.",
            "product_id": 1,
            "created_at": "2023-03-01T02:19:42.621Z",
            "updated_at": "2023-03-01T03:17:11.968Z"
        },
        {
            "id": 14,
            "star_rating": 4,
            "title": "Great customer service",
            "comment": "Amazing store. The products are great quality and value. Ordering was a breeze and fast shipping.",
            "product_id": 1,
            "created_at": "2023-03-01T05:55:32.311Z",
            "updated_at": "2023-03-01T05:55:32.311Z"
        }
    ]
}
```

### Reviews

You can make all CRUD calls for the projects database.

- CREATE reviews
- GET/RETRIEVE all reviews
- DELETE a review
- UPDATE a review

### Example: Create a Review

```js
fetch('http://localhost:9292/reviews', {
        method: 'POST',
        headers: {
             'Content-Type': 'application/json'
                 },
        body: JSON.stringify(formData)
                })
        .then(res => res.json())
        .then(newReview => onAddReview(newReview))

// output
 {
            "id": 6,
            "star_rating": 4,
            "title": "Great Online Support ",
            "comment": "Earum quam tempora illum.",
            "product_id": 1,
            "created_at": "2023-03-01T02:19:42.621Z",
            "updated_at": "2023-03-01T03:17:11.968Z"
}
```

### Example: Delete a Review

```js
fetch(`http://localhost:9292/reviews/11`, {
      method: 'DELETE',
    })

// output
{
            "id": 14,
            "star_rating": 4,
            "title": "Great customer service",
            "comment": "Amazing store. The products are great quality and value. Ordering was a breeze and fast shipping.",
            "product_id": 1,
            "created_at": "2023-03-01T05:55:32.311Z",
            "updated_at": "2023-03-01T05:55:32.311Z"
}
```