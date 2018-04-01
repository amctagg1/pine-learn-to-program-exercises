# Using center, ljust, and rjust,
# Write a program that will display a table of contents so that it looks like this:

#      Table of Contents

# Chapter 1:    Getting Started                page   1
# Chapter 2:    Numbers                        page   9
# Chapter 3:    Letters                        page  13


line_width = 53
chapter_width = 15
title_width = 30
page_width = 5
page_number_width = 3
puts ''
puts ''
puts 'Table of Contents'.rjust(line_width/2)
puts ''
puts 'Chapter 1:'.ljust(chapter_width)+'Getting Started'.ljust(title_width)+'page'.ljust(page_width)+'1'.rjust(page_number_width)
puts 'Chapter 2:'.ljust(chapter_width)+'Numbers'.ljust(title_width)+'page'.ljust(page_width)+'9'.rjust(page_number_width)
puts 'Chapter 3:'.ljust(chapter_width)+'Letters'.ljust(title_width)+'page'.ljust(page_width)+'13'.rjust(page_number_width)
puts