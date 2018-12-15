class Werewolf
    attr_reader :name,
                :location
    
    def initialize(name, location = "London")
        @name = name
         @location = location
         @human = true
         @hungry = false
    end
    
    def human?
        @human
    end
    
    def wolf?
        !@human
    end
    
    def change!
        @human = !@human
        if wolf?
            @hungry = true
        end
    end
    
    def hungry?
        @hungry
    end
    
    def consumes(victim)
        if wolf?
            victim.status = :dead
            @hungry = false
        end
    end
end