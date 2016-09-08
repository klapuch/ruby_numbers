require "numbers/version"

module Numbers
    class FakeNumbers
        def initialize(numbers)
            @numbers = numbers
        end

        def do
            @numbers
        end
    end
end
