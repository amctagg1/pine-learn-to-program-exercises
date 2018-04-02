# Write the program that we talked about at the beginning of chapter 8
# A program that asks us to type as many words as we want
# One word per line, continuing until we just press Enter on an empty line
# And then repeats the words back to us in alphabetical order

# Make sure to test your program thoroughly:
# Does hitting Enter on an empty line ALWAYS exit your program?
# Even on the first line? And the second?

# Hint: theres a lovely array method that will give you a sorted version of an arraya: sort. Use it!

puts ''
puts 'Sort a list by entering each word, one at a time'
puts 'To stop, hit Enter on an empty line'
puts ''
words_unsorted = []
while true
  entry = gets # Don't chomp, we want to see the Enter
  if entry == "\n" # Enter on a blank line
    # sort and print the list, exit the program
    if words_unsorted.length == 0
      puts 'There were no words to sort.'
    else
      puts 'Your sorted list:'
      puts words_unsorted.sort.join("\n")
    end
    break
  end
  new_word = entry.chomp # Now we can chomp off the Enter
  words_unsorted.push(new_word)
end
