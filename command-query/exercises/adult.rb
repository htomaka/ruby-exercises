class Adult
    def initialize
        @beverage_count = 0
    end

    def sober?
        @beverage_count <= 2
    end

    def consume_an_alcoholic_beverage
        @beverage_count += 1
    end

end