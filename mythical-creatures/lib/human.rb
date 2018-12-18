class Human
    attr_reader :name,
                :encounter_counter

    attr_writer :encounter_counter

    def initialize(name="Jane")
        @name = name
        @encounter_counter = 0
    end

    def notices_ogre?
        @encounter_counter % 3 == 0
    end

    def knocked_out?
        @encounter_counter % 2 == 0
    end
end