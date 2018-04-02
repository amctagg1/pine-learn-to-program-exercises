# Write a program that prints out the lyrics to the beloved classic,
# "99 Bottles of Beer on the Wall"

num_bottles = 99
bottles = num_bottles.to_s
while num_bottles > 0
  if num_bottles != 99
    puts bottles+' bottles of beer on the wall'
    puts ''
  end
  puts bottles+' bottles of beer on the wall'
  puts bottles+' bottles of beer'
  puts 'Take one down, and pass it around'
  num_bottles -= 1
  bottles = num_bottles.to_s
  if num_bottles == 0
    puts 'No more bottles of beer on the wall'
  end
end