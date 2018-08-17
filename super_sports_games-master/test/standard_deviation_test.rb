# array.length == subtracted.length
# subtracted.length == squared.length
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/standard_deviation'

class StandardDeviationTest < Minitest::Test

  def test_array_not_empty
    ages = [40, 1, 20, 40, 62, 15, 23]
    st_deviation = StandardDeviation.new(ages)
    refute_nil st_deviation.array
  end

  def test_holds_onto_input_array
    ages = [40, 1, 20, 40, 62, 15, 23]
    st_deviation = StandardDeviation.new(ages)
    assert_equal [40, 1, 20, 40, 62, 15, 23], st_deviation.array
  end

  def test_holds_on_to_arrays
    ages = [40, 1, 20, 40, 62, 15, 23]
    st_deviation = StandardDeviation.new(ages)
    binding.pry
  end

end
