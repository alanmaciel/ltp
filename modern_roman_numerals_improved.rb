def old_roman_numeral num
  raise 'Error num must be a positive integer' if num <= 0
  roman = ''

  millares = (num         / 1000)
  centenas = (num %  1000 /  100)
  decenas  = (num %   100 /   10)
  unidades = (num %    10       )

  roman << 'M' * millares

  if centenas == 9
    roman << 'CM'
  elsif centenas == 4
    roman << 'CD'
  else
    roman << 'D'  * (num %  1000 / 500)
    roman << 'C'  * (num %   500 / 100)
  end

  if decenas == 9
    roman << 'XC'
  elsif decenas == 4
    roman << 'XL'
  else
    roman << 'L' * (num %  100 / 50)
    roman << 'X' * (num %   50 / 10)
  end

  if unidades == 9
    roman << 'IX'
  elsif unidades == 4
    roman << 'IV'
  else
    roman << 'V' * (num % 10 / 5)
    roman << 'I' * (num %  5 / 1)
  end

  roman
end

puts 'Enter a num:'
num = gets.chomp

puts old_roman_numeral num.to_i
