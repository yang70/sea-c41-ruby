# 5 points
#
# Write a program that displays the following table of contents:
#
#   $ ruby exercise7.rb
#                   Table of Contents
#   Chapter 1:  Getting Started                page  1
#   Chapter 2:  Numbers                        page  9
#   Chapter 3:  Letters                        page 13
#
# TIP #1: The width of each line is 50 characters.
#
# TIP #2: You'll need the following methods:
#
#   string.center(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` centered.
#
#     'bird'.center(10)  #=> '   bird   '
#
#   string.ljust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` left justified.
#
#     'bird'.ljust(10)  #=> 'bird      '
#
#   string.rjust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` right justified.
#
#     'bird'.rjust(10)  #=> '      bird'

# create the hash of strings
table_of_contents = {
  'Table of Contents' => nil,
  'Chapter 1:  Getting Started' => 'page  1',
  'Chapter 2:  Numbers' => 'page  9',
  'Chapter 3:  Letters' => 'page 13'
}

# define the function to print and format the strings for the given line width
def print_toc(table_hash, line_width)
  table_hash.each do |key, value|
    if value.nil?
      puts key.center(line_width)
    else
      print key.ljust(key.length)
      puts value.rjust(line_width - key.length)
    end
  end
end

# call the variable and pass it the hash and line width
print_toc(table_of_contents, 50)
