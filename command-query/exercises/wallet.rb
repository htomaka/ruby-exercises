class Wallet
    attr_reader :cents

    def initialize
        @cents = 0
    end

    def penny
        1
    end

    def nickel
        5
    end

    def dime
        10
    end

    def quarter
        25
    end

    def dollar
        100
    end

    def << coin
        # assumes arg is a symbol
        # first cast arg to a string
        # then dispatch dynamically the associated method
        @cents += send(coin.to_s)
    end

    def take(*args)
        # see coin for explanation
        args.each do |coin|
            @cents -= send(coin.to_s) unless @cents - send(coin.to_s) < 0
        end
    end
end