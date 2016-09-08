require 'test_helper'
require 'even_numbers'
require 'fake_numbers'

class EvenNumbersTest < Minitest::Test
    def test_numbers
        numbers = Numbers::EvenNumbers.new(
            Numbers::FakeNumbers.new(
                (1..10).to_a
            )
        )
        assert_equal([2, 4, 6, 8, 10], numbers.do)
    end
end
