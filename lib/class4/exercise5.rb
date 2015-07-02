#!/usr/bin/env ruby
#
# 5 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer between 1 and
# 1000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   $ ruby exercise5.rb 9
#   IX
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    900 = CM
#    500 = D
#    400 = CD
#    100 = C
#     90 = XC
#     50 = L
#     40 = XL
#     10 = X
#      9 = IX
#      5 = V
#      4 = IV
#      1 = I
#
# TIP #3: You only need to change the `modern_roman_numeral` method.

# rubocop:disable MethodLength
def modern_roman_numeral(num)
  roman = ''
  roman += 'M' * (num / 1000)
  num = num % 1000
  roman += 'CM' * (num / 900)
  num = num % 900
  roman += 'D' * (num / 500)
  num = num % 500
  roman += 'CD' * (num / 400)
  num = num % 400
  roman += 'C' * (num / 100)
  num = num % 100
  roman += 'XC' * (num / 90)
  num = num % 90
  roman += 'L' * (num / 50)
  num = num % 50
  roman += 'XL' * (num / 40)
  num = num % 40
  roman += 'X' * (num / 10)
  num = num % 10
  roman += 'IX' * (num / 9)
  num = num % 9
  roman += 'V' * (num / 5)
  num = num % 5
  roman += 'IV' * (num / 4)
  num = num % 4
  roman + 'I' * num
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)

puts modern_roman_numeral(input)
