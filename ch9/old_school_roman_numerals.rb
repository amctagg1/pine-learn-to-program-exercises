# In the early days of Roman numeral, the Romans didn't bother with any of this
# New-fangled subtraction "IX" nonsense.
# No sir, it was straight addition, biggest to littlest.
# So 9 was written 'VIIII'

# Write a method that when passed an integer between 1 and 3000
# Returns a string containing the proper old-school Roman numeral.

# Make sure to test your method on a bunch of different numbers
# Hint: use the integer division and modulus methods

# For reference, these are the values of the letters used:
# I = 1  V = 5  X = 10  L = 50  C = 100  D = 500  M = 1000

def old_roman_numeral num
  working_num = num
  roman_val = ''
  
  numeral_ref = [[1, 'I'],
                [5, 'V'],
                [10, 'X'],
                [50, 'L'],
                [100, 'C'],
                [500, 'D'],
                [1000, 'M']]
  
  (0...numeral_ref.length).reverse_each { |i|
    if working_num > numeral_ref[i][0]
      mult = working_num/numeral_ref[i][0]
      roman_val += numeral_ref[i][1]*(mult)
      working_num %= numeral_ref[i][0]
    end
  }
  roman_val
end

puts old_roman_numeral 7
puts old_roman_numeral 899
puts old_roman_numeral 1450
puts old_roman_numeral 3449
