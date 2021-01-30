words = []
while true
  puts 'Type a word'
  word = gets.chomp
  break if word.empty?
  words << word
end
puts words.sort.join(', ')
