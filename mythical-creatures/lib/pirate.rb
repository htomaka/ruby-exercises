class Pirate
    attr_reader :name,
                :job,
                :cursed,
                :booty
    
    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @heinous_acts = 0
        @booty = 0
    end
    
    def commit_heinous_act
        @heinous_acts += 1
    end
    
    def cursed?
        @heinous_acts > 2
    end
    
    def rob
        @booty += 100
    end
end