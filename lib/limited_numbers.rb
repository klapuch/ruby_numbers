require "numbers/version"

module Numbers
    class LimitedNumbers
        def initialize(from, to)
            @from = from
            @to = to
        end

        def do
            return Range.new(*[@from, @to].minmax).to_a unless same?
            raise RangeError, 'Intervals "from" and "to" can\'t be same'
        end

        def same?
            @from == @to
        end

        private :same?
    end
end
