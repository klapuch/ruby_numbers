require 'test_helper'
require 'interval_numbers'

class IntervalNumbersTest < Minitest::Test
  def test_from_to_correctly_ordered
      numbers = Numbers::IntervalNumbers.new(1, 6)
      assert_equal([1, 2, 3, 4, 5, 6], numbers.do)
  end

  def test_negative_range
      numbers = Numbers::IntervalNumbers.new(-1, 0)
      assert_equal([-1, 0], numbers.do)
  end

  def test_from_to_swapped
      numbers = Numbers::IntervalNumbers.new(6, 1)
      assert_equal([1, 2, 3, 4, 5, 6], numbers.do)
  end

  def test_same_from_to
      numbers = Numbers::IntervalNumbers.new(6, 6)
      exception = assert_raises RangeError do
          assert_equal([1, 2, 3, 4, 5, 6], numbers.do)
      end
      assert_equal('Intervals "from" and "to" can\'t be same', exception.to_s)
  end


end
