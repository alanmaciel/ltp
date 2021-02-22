class OldRomanNumeral
  def convert number
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

  def convert_improved num
    raise 'Must use positive integer' if num <= 0
    roman = ''

    roman << 'M' * (num        / 1000)
    roman << 'D' * (num % 1000 /  500)
    roman << 'C' * (num %  500 /  100)
    roman << 'L' * (num %  100 /   50)
    roman << 'X' * (num %   50 /   10)
    roman << 'V' * (num %   10 /    5)
    roman << 'I' * (num %    5 /    1)

    roman
  end
end
