# product has many reviews
# product data is in the SeedProductData module

class Product
    extend SeedProductData
    attr_accessor :name, :price, :id, :description

    @@all = []

    def initialize(hash)
        hash.each {|k,v| self.send("#{k}=", v)}

        @@all << self
    end

    def self.all
        @@all
    end
end