# Write a program that asks for a starting year and an ending year
# And then print all the leap years between (and including) them

# Leap Years are divisible by 4 (e.g. 1984, 2004)
# However, years divisble by 100 are NOT leap years (e.g. 1800, 1900)
# UNLESS they are also divisible by 400 (e.g. 1600, 2000)

puts ''
puts '#Find all leap years in a given time range#'
puts ''
puts 'What is the starting year?'
start_yr_string = gets.chomp
start_yr_int = start_yr_string.to_i
puts 'What is the ending year?'
end_yr_string = gets.chomp
end_yr_int = end_yr_string.to_i
puts ''

current_yr_int = start_yr_int
leap_years_int = []

while current_yr_int <= end_yr_int
  is_leap_yr = false
  
  if current_yr_int % 4 == 0
    is_leap_yr = true
  end
  if current_yr_int % 100 == 0
    is_leap_yr = false
  end
  if current_yr_int % 400 == 0
    is_leap_yr = true
  end
  
  if is_leap_yr == true
    leap_years_int.push(current_yr_int)
  end
  current_yr_int += 1
end 


puts ''
if leap_years_int.length == 0
  puts 'There were no leap years the range '+start_yr_string+' to '+end_yr_string+'.'
else
  puts 'These were the leap years in the range '+start_yr_string+' to '+end_yr_string+':'
  puts leap_years_int.join(', ')
end 
puts ''
