require "numbers/version"

module Numbers
    class EvenNumbers
        def initialize(numbers)
            @numbers = numbers
        end

        def do
            @numbers.do.select { |number| even?(number) }
        end

        def even?(number)
            number % 2 == 0
        end

        private :even?
    end
end
