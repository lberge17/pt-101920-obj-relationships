# product has many reviews
# product data is in the SeedProductData module

class ObjRelationshipLecture::Product
    extend ObjRelationshipLecture::SeedProductData
    attr_accessor :name, :price, :id, :description

    @@all = []

    def initialize(attributes)
        # send method calls the method by name of first argument and passes second (or more) arguments to that method
        attributes.each {|k,v| self.send("#{k}=", v)}

        @@all << self
    end

    def reviews
        ObjRelationshipLecture::Review.all.select {|review| review.product == self}
    end

    def add_review(review_hash)
        ObjRelationshipLecture::Review.new(review_hash, self)
    end

    def self.all
        @@all
    end
end