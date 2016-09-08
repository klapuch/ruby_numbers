require 'test_helper'
require 'prime_numbers'
require 'fake_numbers'

class PrimeNumbersTest < Minitest::Test
    def test_numbers
        numbers = Numbers::PrimeNumbers.new(
            Numbers::FakeNumbers.new(
                (1..20).to_a
            )
        )
        assert_equal([2, 3, 5, 7, 11, 13, 17, 19], numbers.do)
    end
end
