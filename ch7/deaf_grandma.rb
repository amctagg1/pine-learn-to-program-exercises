# Whatever you say to Grandma, she should respond with
# HUH?! SPEAK UP, SONNY!
# Unless you shout it (use all caps)
# In that case, she thinks she understood you and should yell back
# NO, NOT SINCE 1938!
# Have Grandma shout a different year each time, years between 1930 and 1950
# You can't stop talking to Grandma until you shout 'BYE'

while true
  puts 'What would you like to say to Grandma?'
  tell_grandma = gets.chomp
  if tell_grandma == tell_grandma.upcase
  # you shouted
    if tell_grandma.match(/^BYE/)
    # starts with BYE
      puts 'OKAY. SEE YOU TOMORROW, TERRY.'
      break
    else
      rand_num = rand(21) # 0 through 20
      rand_year = 1930 + rand_num # 1930 through 1950
      rand_year_string = rand_year.to_s
      puts 'NO, NOT SINCE '+rand_year_string+'!'
    end
  else
  # you didn't shout
    puts 'HUH?! SPEAK UP, SONNY!'
  end
end