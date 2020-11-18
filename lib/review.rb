# review belongs to product
class ObjRelationshipLecture::Review
    attr_accessor :product, :content, :username, :stars, :date
    @@all = []

    def initialize(attributes, product)
        attributes.each {|k,v| self.send("#{k}=", v)}
        @product = product

        @@all << self
    end

    def self.all
        @@all
    end

    def delete_review
        @@all.delete(self)
    end
end

# Review.new({content: "", username: "", stars: "", date: ""}, product)