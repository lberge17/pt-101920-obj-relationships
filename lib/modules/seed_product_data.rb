module ObjRelationshipLecture::SeedProductData
    PRODUCTS = [
        {
            name: "MacBook Pro", 
            price: 1499.99, 
            id: 321590710, 
            description: "MacBook Pro 13.3\" Laptop - Apple M1 chip - 8GB Memory - 512GB SSD (Latest Model) - Silver"
        }, {
            name: "iPhone 12 Mini", 
            price: 629.99, 
            id: 129570912, 
            description: "Apple - iPhone 12 mini 5G 64GB - Black (AT&T)"
        }, {
            name: "Surface Book 3", 
            price: 1599.99, 
            id: 2358120701293, 
            description: "Microsoft - Surface Book 3 13.5\" Touch-Screen PixelSense™ - 2-in-1 Laptop - Intel Core i5 - 8GB Memory - 256GB SSD - Platinum"},
        {
            name: "Xbox One S", 
            price: 299.99, 
            id: 1, 
            description: "Microsoft - Xbox One S 1TB Console Bundle - White"
        }, {
            name: "Nintendo Switch", 
            price: 299.99, 
            id: 2182392390, 
            description: "Nintendo - Switch 32GB Console - Neon Red/Neon Blue Joy-Con"
        }, {
            name: "PS5", 
            price: 499.99, 
            id: 921507128957, 
            description: "Sony - PlayStation 5 Console"
        }, {
            name: "Samsung Galaxy S20", 
            price: 649.99, 
            id: 23859071205, 
            description: "Samsung - Galaxy S20 FE 5G 128GB (Unlocked) - Cloud Mint"
        }, {
            name: "Amazon Echo", 
            price: 99.99, 
            id: 82395709712, 
            description: "Amazon - Echo (4th Gen) With premium sound, smart home hub, and Alexa - Charcoal"
        }, {
            name: "Nest Hub Max", 
            price: 229.99, 
            id: 63395172932911, 
            description: "Nest Hub Max 10\" Smart Display with Google Assistant - Chalk"
        }, {
            name: "Apple Watch Series 6", 
            price: 429.00, 
            id: 7723975492184, 
            description: "Apple Watch Series 6 (GPS) 44mm Space Gray Aluminum Case with Black Sport Band - Space Gray"
        }
    ]

    def create_all
        PRODUCTS.each {|product| self.new(product)}
    end
end