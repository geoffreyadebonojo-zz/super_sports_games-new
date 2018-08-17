require 'pry'
require './lib/standard_deviation.rb'

class Event

  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name.to_s
    @ages = ages.to_a
    @sorted_array = @ages.sort
  end

  def max_age
    @sorted_array.last
  end

  def min_age
    @sorted_array.first
  end

  def average_age
    @total_age = 0

    @ages.each do |age|
      @total_age += age.to_f.round(1)
    end

    @avg_age = @total_age / @ages.length
  end

  def standard_deviation_age
    StandardDeviation.new(@ages).standard_deviation
  end
end
