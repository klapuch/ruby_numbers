require "numbers/version"

module Numbers
    class OddNumbers
        def initialize(numbers)
            @numbers = numbers
        end

        def do
            @numbers.do.select { |number| odd?(number) }
        end

        def odd?(number)
            number % 2 == 1
        end

        private :odd?
    end
end
