require "numbers/version"

module Numbers
    class RandomNumbers
        REASONABLE_COUNT = 2

        def initialize(numbers, count = nil)
            @numbers = numbers
            @count = count
        end

        def do
            unless reasonable_count?
                raise RangeError,
                    "Count of the numbers must be at least #{REASONABLE_COUNT}"
            end
            return @numbers.do.sample(@count) if fixed_count?
            return @numbers.do.sample(rand(1..count))
        end

        def fixed_count?
            @count != nil
        end

        def count
            @numbers.do.count
        end

        def reasonable_count?
            !fixed_count? || @count >= REASONABLE_COUNT
        end

        private :count, :fixed_count?, :reasonable_count?
    end
end
