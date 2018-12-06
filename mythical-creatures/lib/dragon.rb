class Dragon 
    attr_reader :name,
                :color,
                :rider
    
    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hungry = true
        @meals_count = 0
    end
    
    def hungry?
        @hungry
    end
    
    def eat
        @meals_count += 1
        @hungry = @meals_count < 3
    end
    
end