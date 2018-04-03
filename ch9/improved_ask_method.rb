# def ask question
#   while true
#     puts question
#     reply = gets.chomp.downcase
#     if (reply == 'yes' || reply == 'no')
#       if reply == 'yes'
#         answer = true
#       else
#         answer = false
#       end
#       break
#     else
#       puts 'Please answer "yes" or "no."'
#     end
#   end
#   answer
# end

# The ask method above is okay, but I bet you can do better.
# Try to clean it up by removing the answer variable.
# You'll have to use return to exit from the loop.


def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
    else
      puts 'Please answer "yes" or "no"'
    end
  end
end

answer = ask "Do you drink whole milk?"
puts answer