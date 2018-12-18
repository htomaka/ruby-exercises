class RollCall < Array
    def longest_name
        self.max_by do |name|
            name.length
        end
    end
end