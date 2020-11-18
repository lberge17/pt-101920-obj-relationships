# Object Relationships

## Types of Relationships

has-many-belongs-to 
 - product has_many reviews, review belongs_to product
 - Library has_many books, book belongs_to library
 - user has_many posts, post belongs_to user
 - user has_many photos, photo belongs_to user
 - store has_many products, photo belong_to product

many-to-many 
 - tweet has_many hashtags, hashtag has_many tweets
 - countries have_many treaties, treaties has_many countries
 - stores has_many products, products has_many stores

has-many-through 
 - recipe has_many ingredient_measurements, recipe has_many ingredients through ingredient_measurements
 - doctor has_many appointments, doctor has_many patients through appointments
 - stores has_many products, store has_many distributers through products
 - band has_many musicians, band has_many instruments through musicians

belongs-to-has-one
 - passport belongs_to person, person has_one passport

## Objects can store other objects as properties/instance variables
```ruby
product = Product.new
review = Review.new
review.product = product
```

## Single Source of Truth
- Relationships are usually dynamic, meaning they can change.
- Storing the association in only 1 place makes your code easier to maintain and less prone to bugs.
- We use methods in the class not in charge of storing the association to reveal the association (i.e. product.reviews will iterate over Review.all to find the reviews that store that product).