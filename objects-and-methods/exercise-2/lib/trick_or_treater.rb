require_relative './bag'

class TrickOrTreater
    attr_reader :bag,
                :sugar_level
    
    def initialize costume
        @costume = costume
        @bag = Bag.new
        @sugar_level = 0
    end
    
    def dressed_up_as
        @costume.style
    end
    
    def has_candy?
        @bag.count > 0
    end
    
    def candy_count
        @bag.count
    end
    
    def eat 
        candy = @bag.take().first
        @sugar_level += candy.sugar
    end
end