class Centaur 
    attr_accessor :name,
                  :breed
    
    SHOOT = 'Twang!!!'
    RUN = 'Clop clop clop clop!!!'
    NO = 'NO!'
                  
    def initialize(name, breed)
       @name = name
       @breed = breed
       @standing = true
       @actions = 0
       @sick = false
    end
    
    def shoot
        if cranky? || laying?
            @actions = 0
            return NO
        else
            @actions += 1
            return SHOOT
        end
    end
    
    def run
        if cranky? || laying?
            @actions = 0
            return NO
        else
            @actions += 1
            return RUN
        end
    end
    
    def sleep
        if standing?
            NO
        else
            @actions = 0
        end
    end
    
    def drink
        if standing? || !cranky?
            @sick = true
        else
            @actions = 0
        end
    end
    
    def stand_up
        @standing = true
    end
    
    def lay_down
        @standing = false
    end
    
    def cranky?
        @actions == 3
    end
    
    def standing?
        @standing
    end
    
    def laying?
        !@standing
    end
    
    def sick?
        @sick
    end
    
end