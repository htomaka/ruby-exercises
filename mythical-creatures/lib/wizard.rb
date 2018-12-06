class Wizard
    attr_reader :name
    
    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @cast_count = 0
    end
    
    def bearded?
        true if @bearded
    end
    
    def rested?
        @cast_count < 3
    end
    
    def incantation(msg)
        'sudo ' + msg
    end
    
    def cast
        @cast_count += 1
        "MAGIC MISSILE!"
    end
end