def old_roman_numeral number
  result = ""

  # Procesar miles
  n = number/1000
  if n > 0
    result += 'M'*n
    number = number - 1000*n
  end

  # Procesar quinientos
  n = number/500
  if n > 0
    result += 'D'
    number = number - 500
  end

  # Procesar centenas
  n = number/100
  if n > 0
    result += 'C'*n
    number = number - 100*n
  end

  # Procesar cincuenta
  n = number/50
  if n > 0
    result += 'L'
    number = number - 50
  end

  # Procesar decenas
  n = number/10
  if n > 0
    result += 'X'*n
    number = number - 10*n
  end

  # Procesar cinco
  n = number/5
  if n > 0
    result += 'V'
    number = number - 5
  end

  # Procesar unidades
  n = number/1
  if n > 0
    result += 'I'*n
    number = number - 1 * n
  end

  result
end

puts 'Enter a number'
number = gets.chomp

puts "#{old_roman_numeral number.to_i}"

# puts
# puts "#{old_roman_numeral 10}"
# puts "#{old_roman_numeral 100}"
# puts "#{old_roman_numeral 1000}"
# puts "#{old_roman_numeral 1973}"
# puts "#{old_roman_numeral 1980}"
# puts "#{old_roman_numeral 2021}"
