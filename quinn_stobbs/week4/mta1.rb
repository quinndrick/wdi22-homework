# MTA Lab
#
# Activity:
#
# Students should create a program that models a simple subway system.
#
# The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints:
#
# the stations the user must pass through, in order
# where to change lines, if necessary
# the total number of stops for the trip.
# There are 3 subway lines:
#
# The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
# The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
# The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
# All 3 subway lines intersect at Union Square, but there are no other intersection points.
# For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.
# We should be able to say:
#
# plan_trip( :n, "Times Square", :l, "Grand Central" )
# # Or something along those lines
# Hints:
#
# Don't worry about user input initially: get it working with hardcoded values first, and wire up the user interface once that's working
# Scope works in a different way in Ruby, so variables that you define outside won't be accessible in a method. Maybe think about using a function to return data. Or perhaps research other types of variables
# A symbol can't just be a number!
# Consider diagraming the lines by sketching out the subway lines and their stops and intersection.
# Make subway lines keys in a hash, while the values are an array of all the stops on each line.
# The key to the lab is to find the intersection of the lines at Union Square.
# Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)

# pseudo
# need to head down the line
#   can loop through until the function is equal to what i need.
#     loop with each
#     until the end train line
#       want to return the train line minus union square
#       test with other train stations in the lines
#
#     make sure to start with an if to see they are not starting at the same station
#     can use select to get to the right station?
#
#
# when it hits the station i will need it to put the station that i want to designate
# remove all the other stations so i just have the line (key) and the station left (value)
#
# **think of the index numbers with the previous versions
# #
#
#
# #
# Notes from class
#
# Iteration
# arr.map do |a|
#   a * 2
# end
# map will go through and change what we need
#
# Selection for the stop that we want to find
# might be able to loop through the singel array to get the result i want
# arr.select do |a|
#     a > 3
# end
#
# Array comparison, can we compare the end result and what is happening
#
#
# Accessing Values
# person = {
#     :name => "Elke",
#     :location => "Berkeley",
#     "Skill in Mr. Squiggle" => 5
# }
# #
# person[:name]
# person["Skill in Mr. Squiggle"]
# #
# Iteration
# serge = {
#     name: "Serge",
#     nationality: "French"
# }
#
# serge.each do |key, value|
#     puts "Key: #{key} and Value: #{value}"
# end
#
# serge.keys.each do |key|
#     puts key
# end
#
# serge.values.each do |value|
#     puts value
# end
#
# PSEUDO
# need to start on the correct line
# need to travel from one end to the other
#   i can do this through indexing the different numbers and matching the index of start (this is the hardcode) to the one i want to get to
# start small
#
# get it to go loop through the n_line
#
# first of all i need to access the n_line


#NOTES FROM Ruby
# direction_check = start_index <=> end_index
# returns either a 1 for one way and a -1 for the other direction
#





#MY ANSWER
#what needs to be added
# figure out the direction i want to go by the size of the index for the line
# use this to figure out what line i need to go on



require "pry"

h_line = {
  :line_n => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :line_l => [ "8th", "6th", "Union Square", "3rd", "1st"],
  :line_6 => [ "Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor_Place"]
}

binding.pry

#Two way
#get the start station
puts "What station are you starting at?"
  start_station = gets.to_s
#convert the start station to the necessary index number
  h_line [ :line_n ].index { |x| x == "Times Square" }
  start_station = gets.to_i
  h_line [ :line_n ]
# display the message where the person will be startin
  puts "you will be starting at the 'x-line' at #{ start_station }"

#find the end station
puts "what is your end station?"
  end_station = gets.to_s
#convert the end station to the relevant
  h_line [ :line_6 ].index { |x| x == "Grand Central"}
  end_station = gets.to_i

#create the middle_station where everyone has to change
puts "middle_station"
#get the index for this as well
  h_line [ :line_n ].index { |x| x == "Union Square"}
  middle_station = gets.to_i

#start at the first station & loop through until you hit union station

if start_station <=> end station
  #1 it will go one way
    #-1 it will go the other way


if start_station == "Times Square"
  h_line [ :line_n ].index { |x| x == "Times Square" }
  start_station = gets.to_i
  h_line [ :line_n ]
  puts "you will be starting at the 'x-line' at #{ start_station }"




  #this is where the loop needs to end
  until middle_station = "Union Square"
    h_line [ :line_n ].values.each do |x|
      puts "Disemback at #{ middle_station }"
      h_line [ :line_6 ]
    # loop through the line_n until you get to Union Square

    #ch
    h_line [ :line_6 ].index { |x| x == "Grand central"}
    puts "change line"
    # travel from Union Square to Grand Central
  end
end



#
#
#
# #One way
# # stary by asking which station someone is starting at
#
# puts "What station are you starting at?"
# start_station = gets.to_s
#
# # now access the right line as we know where it is
#
# if start_station == "Times Square"
#   var =  h_line [ :line_n ]
#   puts "you will be starting at the 'x-line' at #{ start_station }"
#
# #loop through until we hit Union Square
#   until end_station == "Union Square"
#     puts "you will be ending at #{ end_station }"
# end
#
#
#
# h_line [ :line_n ].index { |x| x == "Times Square" }
# start_station = gets.to_i
#
# h_line [ :line_n ].index { |x| x == "8th"}
# end_station = gets.to_i
#
# if start_station < end_station
#   puts "you will end on #{ end_station }"
# end





# alright start by accessing the different arrays

# practice get the 3 lines and merge them together just as an exercise
#
# n_line = %w[ Times_Square 34th 28th 23rd Union_Square 8th ]
# l_line = %w[ 8th 6th Union_Square 3rd 1st]
# 6_line = %w[ Grand_Central 33rd 28th 23rd Union_Square Astor_Place]
#
#
# h = { [:n_line => %w[ Times_Square 34th 28th 23rd Union_Square 8th ]
#  }
# pseudo
# need to head down the line
#   can loop through until the function is equal to what i need.
#     it will either be heading one direction from big to small
#
#     make sure to start with an if to see they are not starting at the same station
#     can use select to get to the right station?
#
#
# when it hits the station i will need it to put the station that i want to designate
# remove all the other stations so i just have the line (key) and the station left (value)
#
# **think of the index numbers with the previous versions
