require 'test_helper'
require 'unique_numbers'
require 'fake_numbers'

class UniqueNumbersTest < Minitest::Test
    def test_numbers
        numbers = Numbers::UniqueNumbers.new(
            Numbers::FakeNumbers.new(
                [1, 1, 2, 3, 4, 0, 0]
            )
        )
        assert_equal([1, 2, 3, 4, 0], numbers.do)
    end
end
