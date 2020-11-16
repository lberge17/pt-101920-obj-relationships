# Object Relationships

## Key Concepts:

Types of Relationships
- has-many-belongs-to (product has_many reviews, review belongs_to product)
- many-to-many (tweet has_many hashtags, hashtag has_many tweets)
- has-many-through (recipe has_many ingredient_measurements, recipe has_many ingredients through ingredient_measurements)
- belongs-to-has-one (passport belongs_to person, person has_one passport)

Objects can store other objects as properties/instance variables
```ruby
product = Product.new
review = Review.new
review.product = product
```

Single Source of Truth
- Relationships are usually dynamic, meaning they can change.
- Storing the association in only 1 place makes your code easier to maintain and less prone to bugs.
- We use methods in the class not in charge of storing the association to reveal the association (i.e. product.reviews will iterate over Review.all to find the reviews that store that product).