title =  'Table of Contents'
chapters = [
  ['Getting Started', 1],
  ['Numbers', 9],
  ['Letters', 13]
]

line_width = 80

puts(title.center(line_width))
puts

chapters.each_with_index  do |chapter, idx|
  name, page = chapter
  chap_number = idx + 1
  beginning = "Chapter #{chap_number}:  #{name}"
  ending = "page #{page}"
  puts(beginning.ljust(line_width/2) + ending.rjust(line_width/2))
end
