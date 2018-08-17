require 'pry'

class StandardDeviation

  attr_reader :standard_deviation

  def initialize(array)
    @array = array
  end

  def sum_ages
    @sum_of_ages = 0.0
    @array.each do |number|
      @sum_of_ages += number
    end
    @sum_of_ages
  end

  def average_age
    @average_age = sum_ages / @array.length
  end

  def ages_subtracted_from_average
    @array.map do |digit|
      (average_age - digit)
    end
  end

  def subtracted_ages_squared
    ages_subtracted_from_average.map do |number|
      (number ** 2).round(3)
    end
  end

  def sum_squared_ages
    @sum_of_squared_ages = 0.0
    subtracted_ages_squared.each do |number|
      @sum_of_squared_ages += number
    end
    @sum_of_squared_ages
  end

  def average_of_squared_ages
    average = sum_squared_ages.to_f / subtracted_ages_squared.length
  end

  def standard_deviation
    Math.sqrt(average_of_squared_ages).round(2)
  end
end
