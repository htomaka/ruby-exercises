class Beaver
    attr_reader :name
    
    def initialize(name)
        @name = name.capitalize + ' the Beaver'
    end
end