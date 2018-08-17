# Create a program that allows a User to interact with the Games through the command line
# Upon starting the program, the User should enter the year for the games
# The User can then create new Events and get a Summary of the Events

require 'pry'
require './lib/games'


def create_new_games
  p "What year are the games?"
  reply = gets.chomp.to_i
  games = Games.new(reply)
  puts "LET THE #{games.year} GAMES BEGIN!"
end

def add_events
  p "Add events?"
  reply = gets.chomp.to_s
  if reply == "y"
    create_new_event
  end
end

def create_new_event
  p "What's the new event called?"
  event_name = gets.chomp.to_s
  age_array = enter_ages
  @new_event = Event.new("#{event_name}", age_array)
  # puts "#{@new_event.name.upcase} event has been created!"
  return @new_event
end

def enter_ages
  p "please enter the ages of the participants, separated by commas"
  ages = gets.chomp.split(",").to_a
  ages.map do |age|
    age.to_i
  end
end


puts "Create New Games? y/!y"
reply = gets.chomp.to_s
if reply == "y"
  create_new_event
else
  puts "Goodbye!"
end
