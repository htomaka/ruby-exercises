class TrickOrTreater
    attr_reader :bag
    
    def initialize(costume)
        @costume = costume
        @bag = Bag.new
    end
    
    def dressed_up_as
        @costume.style
    end
    
    def has_candy?
        true unless @bag.empty?
    end
    
    def candy_count
        @bag.count
    end
    
    def eat
        @bag.pop
    end
end