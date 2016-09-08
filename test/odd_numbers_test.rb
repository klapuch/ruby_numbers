require 'test_helper'
require 'odd_numbers'
require 'fake_numbers'

class OddNumbersTest < Minitest::Test
    def test_numbers
        numbers = Numbers::OddNumbers.new(
            Numbers::FakeNumbers.new(
                (1..10).to_a
            )
        )
        assert_equal([1, 3, 5, 7, 9], numbers.do)
    end
end
