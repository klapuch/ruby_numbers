require "numbers/version"

module Numbers
    class UniqueNumbers
        def initialize(numbers)
            @numbers = numbers
        end

        def do
            @numbers.do.uniq
        end
    end
end
