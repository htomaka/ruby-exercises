class Bag 
    attr_reader :candies,
                :count
                
    def initialize
        @candies = []
    end
    
    def empty?
        count.zero?
    end
    
    def <<(candy)
        candies << candy
    end
    
    def count 
        candies.length
    end
    
    def contains?(element)
        candies.any? do |candy|
            candy.type == element
        end
    end
    
    def pop
        candies.pop
    end
end