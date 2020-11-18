class ObjRelationshipLecture::CLI
    def run
        greeting
        menu
    end

    def greeting
        print "Hi! Fetching your products now:".colorize(:light_blue)
        sleep(0.5)
        print "."
        sleep(0.5)
        print "."
        sleep(0.5)
        print "."
        sleep(0.5)
        puts
        ObjRelationshipLecture::Product.create_all
    end

    def menu
        loop do
            list_products
            select_product
        end
    end

    def list_products
        ObjRelationshipLecture::Product.all.each.with_index(1) do |product, i|
            puts "#{i}. #{product.name}".colorize(:green)
        end
    end

    def select_product
        input = gets.chomp
        if input == "exit"
            good_bye
        elsif input.to_i.between?(1, ObjRelationshipLecture::Product.all.size)
            display_product(ObjRelationshipLecture::Product.all[input.to_i - 1])
        else
            "invalid input, try again.".colorize(:orange)
            select_product
        end
    end

    def display_product(p)
        puts
        puts "Name: ".colorize(:light_blue) + p.name
        puts "Price: ".colorize(:light_blue) + "$#{p.price}"
        puts "Description: ".colorize(:light_blue) + p.description
        puts "ID number: ".colorize(:light_blue) + p.id.to_s
        puts
        sleep(2)
        puts "Enter to continue".colorize(:yellow)
        
        good_bye if gets.chomp == "exit"
    end

    def good_bye
        "Bye!".colorize(:blue)
        exit
    end
end
