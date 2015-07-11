#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer
  def hours_in_seconds
    self * 3600
  end
end

class String
  def indent(amount = 2)
    prepend(' ' * amount)
  end
end

class Integer
  # rubocop:disable MethodLength
  def to_roman
    num = self
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
end

class Array
  def second
    self[1]
  end

  def third
    self[2]
  end
end
