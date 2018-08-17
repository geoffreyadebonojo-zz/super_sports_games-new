require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test

  def test_it_exists
    event = Event.new("Curling", [20, 30])
    assert_instance_of Event, event
  end

  def test_name
    event = Event.new("Curling", [20, 30])
    assert_equal("Curling", event.name)
  end

  def test_event_ages
    event = Event.new("Curling", [20, 30])
    assert_equal [20, 30], event.ages
  end

  def test_min_age
    event = Event.new("Curling", [20, 30])
    assert_equal 20, event.min_age
  end

  def test_max_age
    event = Event.new("Curling", [20, 30])
    assert_equal 30, event.max_age
  end

  def test_average_age
    event = Event.new("Curling", [20, 30])
    assert_equal 25, event.average_age
  end

  def test_standard_deviation_age
    event = Event.new("Curling", [20, 30])
    assert_equal 5.0, event.standard_deviation_age
  end

end
