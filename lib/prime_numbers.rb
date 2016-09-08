require "numbers/version"
require "prime"

module Numbers
    class PrimeNumbers
        def initialize(numbers)
            @numbers = numbers
        end

        def do
            @numbers.do.select { |number| Prime.prime?(number) }
        end
    end
end
