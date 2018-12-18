class Bag
    attr_reader :candies
    
    def initialize
        @candies = []
    end
    
    def << candy
        @candies << candy
    end
    
    def empty?
        @candies.empty?
    end
    
    def count
        @candies.length
    end
    
    def first
        @candies.first
    end
    
    def contains? candy_type
        @candies.any? {|candy| candy.type == candy_type}
    end
    
    def grab candy_type
        foundIndex = @candies.find_index {|candy| candy.type == candy_type}
        @candies.slice!(foundIndex)
    end
    
    def take n = 1
        @candies.slice!(0, n)
    end
        
end