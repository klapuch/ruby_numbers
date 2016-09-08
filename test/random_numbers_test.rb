require 'test_helper'
require 'random_numbers'
require 'fake_numbers'

class RandomNumbersTest < Minitest::Test
    def test_count_of_selected_numbers
        numbers = Numbers::RandomNumbers.new(
            Numbers::FakeNumbers.new(
                (1..20).to_a
            ),
            5
        )
        assert_equal(5, numbers.do.count)
    end

    def test_some_selected_numbers_without_explicit_count
        numbers = Numbers::RandomNumbers.new(
            Numbers::FakeNumbers.new(
                (1..20).to_a
            )
        )
        assert_equal(true, numbers.do.count >= 1)
    end

    def test_numbers_without_possibility_to_be_random
        numbers = Numbers::RandomNumbers.new(
            Numbers::FakeNumbers.new(
                (1..20).to_a
            ),
            0
        )
        exception = assert_raises RangeError do
            numbers.do
        end
        assert_equal('Count of the numbers must be at least 2', exception.to_s)
    end
end
