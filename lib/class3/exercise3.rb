# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
chatting = true
bye_count = 0

while chatting
  if bye_count == 3
    puts 'Nana: BYE SWEETIE!'
    chatting = false
  else
    response = gets.chomp
    if response == 'BYE' && bye_count != 2
      puts 'Nana: HOW\'S SCHOOL GOING?'
      bye_count += 1
    elsif response == 'BYE' && bye_count == 2
      bye_count += 1
    elsif response != response.upcase
      bye_count = 0
      puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
    else
      bye_count = 0
      random_year = rand(21) + 1930
      puts "Nana: NOT SINCE #{random_year}!"
    end
  end
end
