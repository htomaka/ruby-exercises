class Person
    attr_reader :name,
                :stoned
                
    attr_writer :stoned
    
   def initialize(name)
       @name = name
       @stoned = false
   end
   
   def stoned?
       @stoned
   end
end

class Medusa
    attr_reader :name,
                :statues
    
   def initialize(name)
       @name = name
       @statues = []
   end
   
   def stare(victim)
        if @statues.length < 3
            victim.stoned = true
            @statues << victim
        else
            # make room and set removed victim to unstoned
            first = @statues.shift
            first.stoned = false
            # add new victim
            victim.stoned = true
            @statues << victim
        end
   end
end