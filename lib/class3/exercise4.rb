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

for num in 1900..2000 # Rubocop doesn't like this, wants me to use .each somehow?
  if num % 100 == 0 && num % 400 == 0
    puts num
  elsif num % 100 != 0 && num % 4 == 0
    puts num
  end
end
