# 5 points
#
# Write a program that displays all the leap years between 1900 and 2000.
#
# Leap years are years divisible by 4 (e.g. 1984).
#
# Years divisible by 100 are not leap years (e.g. 1900) unless they are also
# divisible by 400 (e.g. 2000).
#
# TIP: I expect you to use a loop and a few modulo operations.
#
#
# for num in 1900..2000 # Rubocop doesn't like, wants me to use .each somehow?
#   if num % 100 == 0 && num % 400 == 0
#     puts num
#   elsif num % 100 != 0 && num % 4 == 0
#     puts num
#   end
# end

# create the years array
years = []

# create a counter to add to 1900 while creating the years array
counter = 0

# create the years array with all years from 1900 to 2000 inclusive
101.times do
  years << 1900 + counter
  counter += 1
end

# iterate over the array and puts the year if it is a leap year
years.each do |year|
  if year % 100 == 0 && year % 400 == 0
    puts year
  elsif year % 100 != 0 && year % 4 == 0
    puts year
  end
end
