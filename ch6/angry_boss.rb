# Write an angry boss program that rudely asks you what you want.
# Whatever you answer, the angry boss should yell it back to you and then fire you.

puts '[What is your name?]'
name = gets.chomp
puts '*knock* *knock*'
puts 'Who\'s there??'
puts 'It\'s '+name+', sir.'
puts 'You? I\'m very busy. What do you want?'
question = gets.chomp.upcase
puts 'WHADDAYA MEAN "'+question+'" YOU\'RE FIRED!!'