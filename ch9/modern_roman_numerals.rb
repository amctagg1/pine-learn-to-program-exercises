# Eventually, someone thought it would be terribly clever
# If putting a smaller number before a larger one meant you had to subtract the smaller one
# As a result of this development, you must now suffer.
# 
# Re-write you previous method to return the new-style Roman numerals
# So when someone calls roman_numeral 4, it should return 'IV'

# My Notes:
# No more than 3 identical symbols may ever appear in a row.
# I before V, X
# X before L, C
# C before D, M


def roman_numeral num
  working_num = num
  roman_val = ''
  
  # [number value, roman value, index of its modifier (if any)]
  numeral_ref = [[1, 'I'], #0
                [5, 'V', 0],
                [10, 'X', 0], #2
                [50, 'L', 2],
                [100, 'C', 2], # 4
                [500, 'D', 4],
                [1000, 'M', 4]] #6
  
  (0...numeral_ref.length).reverse_each { |i|
  
    ref_num = numeral_ref[i][0]
    ref_rom = numeral_ref[i][1]
    ref_mod_i = numeral_ref[i][2]
    ref_mod_num = ref_mod_i ? numeral_ref[ref_mod_i][0] : 0
    ref_mod_rom = ref_mod_i ? numeral_ref[ref_mod_i][1] : ''
  
    if working_num >= ref_num # The 'normal' case
      mult = working_num/ref_num
      roman_val += ref_rom*(mult)
      working_num %= ref_num
    end
    if working_num >= (ref_num - ref_mod_num) # The 'subtraction case'
      roman_val += ref_mod_rom+ref_rom
      working_num -= (ref_num - ref_mod_num)
    end
    
  }
  roman_val
end


puts roman_numeral 0      # 
puts roman_numeral 7      # VII
puts roman_numeral 9      # IX
puts roman_numeral 10     # X
puts roman_numeral 12     # XII
puts roman_numeral 39     # XXXIX
puts roman_numeral 40     # XL
puts roman_numeral 49     # XLIX
puts roman_numeral 50     # L
puts roman_numeral 400    # CD
puts roman_numeral 439    # CDXXXIX
puts roman_numeral 900    # CM
puts roman_numeral 999    # CMXCIX
puts roman_numeral 1464   # MCDLXIV
puts roman_numeral 2940   # MMCMXL