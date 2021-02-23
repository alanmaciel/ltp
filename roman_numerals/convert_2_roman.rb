require './lib/old_roman_numerals'
require './lib/roman_numerals'

puts 'Enter a number'
number = gets.chomp

old_roman_numeral = OldRomanNumeral.new
roman_numeral = RomanNumeral.new

puts "#{old_roman_numeral.convert number.to_i}"
puts "#{roman_numeral.convert number.to_i}"

# puts
# puts "#{old_roman_numeral 10}"
# puts "#{old_roman_numeral 100}"
# puts "#{old_roman_numeral 1000}"
# puts "#{old_roman_numeral 1973}"
# puts "#{old_roman_numeral 1980}"
# puts "#{old_roman_numeral 2021}"
