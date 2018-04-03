# Re-write your table of contents program from chapter 6
# Start the program with an array holding all of the information for your table of contents
# Chapter names, page numbers, and so on
# Then print out the informaiton from the array in a beautifully formatted table of contents

#      Table of Contents

# Chapter 1:    Getting Started                page   1
# Chapter 2:    Numbers                        page   9
# Chapter 3:    Letters                        page  13

title = 'Table of Contents'
chapters = [['Getting Started', 1],
            ['Numbers', 9],
            ['Letters', 13]]

chapter_width = 15
title_width = 30
page_width = 5
page_number_width = 3
total_line_width = chapter_width + title_width + page_width + page_number_width

puts ''
puts ''
puts title.rjust(total_line_width/2)
puts ''
puts 'Chapter 1:'.ljust(chapter_width)+chapters[0][0].ljust(title_width)+'page'.ljust(page_width)+chapters[0][1].to_s.rjust(page_number_width)
puts 'Chapter 2:'.ljust(chapter_width)+chapters[1][0].ljust(title_width)+'page'.ljust(page_width)+chapters[1][1].to_s.rjust(page_number_width)
puts 'Chapter 3:'.ljust(chapter_width)+chapters[2][0].ljust(title_width)+'page'.ljust(page_width)+chapters[2][1].to_s.rjust(page_number_width)
puts ''