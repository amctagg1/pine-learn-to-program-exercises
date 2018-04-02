# What if Grandma doesn't want you to leave?
# When you shout BYE, she could pretend not to hear you
# Change your previous program so that you have to shout BYE three times in a row
# Make sure to test your program:
# If you shout BYE three times but not in a row, you should still be talking to Grandma

num_byes = 0
while true
  puts 'What would you like to say to Grandma?'
  tell_grandma = gets.chomp
  if tell_grandma == tell_grandma.upcase # you shouted
    if tell_grandma.match(/^BYE/) # started with BYE
      num_byes += 1
      if num_byes >= 3
        puts 'OH, ALRIGHT THEN. SEE YOU TOMORROW, TERRY.'
        num_byes = 0
        break
      else
        puts '...'
      end
    else # you shouted, but not BYE
      rand_num = rand(21) # 0 through 20
      rand_year = 1930 + rand_num # 1930 through 1950
      rand_year_string = rand_year.to_s
      puts 'NO, NOT SINCE '+rand_year_string+'!'
      num_byes = 0
    end
  else # you didn't shout
    puts 'HUH?! SPEAK UP, SONNY!'
    num_byes = 0
  end
end