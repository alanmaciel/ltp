puts 'Hello, please tell me your favorite number: '
favorite_number = gets.chomp
best_number = favorite_number.to_i + 1

puts 'I suggest this is a bigger and better favorite number ' + best_number.to_s
