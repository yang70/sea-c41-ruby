# 5 points
#
# Write an angry boss program that rudely asks what you want. Whatever you
# answer, the angry boss must yell it back to you and then fire you.
#
# Here's how the program must work:
#
#   $ ruby exercise6.rb
#   CAN'T YOU SEE I'M BUSY?! MAKE IT FAST, JOHNSON!
#   i want a raise
#   WHADDAYA MEAN 'I WANT A RAISE'?!? YOU'RE FIRED!!
puts "CAN'T YOU SEE I'M BUSY?! MAKE IT FAST, JOHNSON!"
phrase = gets.chomp
phrase.upcase!
puts "WHADDAYA MEAN '#{phrase}'?!? YOU'RE FIRED!!"
