# Pling Plang Plong
#
# Write a program that converts a number to a string per the following rules:
#
# If the number contains 3 as a factor, output 'Pling'. If the number contains 5 as a factor, output 'Plang'. If the number contains 7 as a factor, output 'Plong'.
#
# If the number does not contain 3, 5, or 7 as a factor, simply return the string representation of the number itself.
#
# E.g.
#
# The number 28 is divisible by 7, so...
#
# # => "Plong"
# The number 1755 is divisible by 3 and 5, so...
#
# # => "PlingPlang"
# The number 34 is not divisible by 3,5 or 7, so...
#
# # => "34"

# THE REAL ANSWER

#make a function and define it. same as javascript
puts "Please enter a number"
input = gets.chomp

def raindrops ( number )

  # make an empty string
    str = ""

  # divisible by 3 add and answer PlingPlang
  # if number % 3 == 0
  #   str += "Pling"
  # end

# if you are doing something simple you can write everything on one line
# once it gets longer it's too unreadable
  str += "Pling" if number % 3 == 0
  str += "Plang" if number % 5 == 0
  str += "Plong" if number % 7 == 0

# implicit return. gives us the last line in the answer
 # p str
 # p number

 return str unless str.empty?
 number

end #raindrop


# puts "#{ input }"
puts raindrops input


# # MY ANSWER
# puts "Welcome to Pling Plang Plong"
#
# puts "Please enter a number"
# number = gets.to_i
#
# string_number = number.to_s
#
# #make your empty variable to store in
# puts ""
# sound = gets.chomp
#
#
# if number % 3 == 0
#   sound "Pling "
#   puts sound
# end
# if number % 5 == 0
#   sound "Plang "
#   puts sound
# end
# if number % 7 == 0
#   sound "Plong "
#   puts sound
# else
#   puts "Is this a string? #{ string_number }"
# end




# ANSWER NUMBER 1
# if number % 3 == 0 && number % 5 == 0 && number % 7 == 0
#   puts "Pling Plang plong"
# elsif number % 7 == 0 && number % 5 == 0
#   puts "Plong Plang"
# elsif number % 7 == 0 && number % 3 == 0
#   puts "Pling Plong"
# elsif number % 5 == 0 && number % 3 == 0
#   puts "Pling Plang"
# elsif number % 7 == 0
#   puts "Plong"
# elsif number % 5 == 0
#   puts "Plang"
# elsif number % 3 == 0
#   puts "Pling"
# else
#   puts "Is this a string? #{ string_number } "
# end


# #
# # if number % 3 == 0
# #   puts "Pling"
# # elsif number % 5 == 0
# #   puts "Plang"
# # elsif number % 7 == 0
# #   puts "Plong"
# else
#   puts "#{ number }"
# end
