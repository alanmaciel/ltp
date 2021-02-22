class RomanNumeral
  def convert number
    result = ""

    # Procesar miles
    n = number/1000
    if n > 0
      result += 'M'*n
      number = number - 1000*n
    end

    n = number/900
    if n > 0
      result += 'CM'
      number = number - 900
    end

    # Procesar quinientos
    n = number/500
    if n > 0
      result += 'D'
      number = number - 500
    end

    n = number/400
    if n > 0
      result += 'CD'
      number = number - 400
    end

    # Procesar centenas
    n = number/100
    if n > 0
      result += 'C'*n
      number = number - 100*n
    end

    n = number/90
    if n > 0
      result += 'XC'
      number = number - 90
    end

    # Procesar cincuenta
    n = number/50
    if n > 0
      result += 'L'
      number = number - 50
    end

    n = number/40
    if n > 0
      result += 'XL'
      number = number - 40
    end

    # Procesar decenas
    n = number/10
    if n > 0
      result += 'X'*n
      number = number - 10*n
    end

    n = number/9
    if n > 0
      result += 'IX'
      number = number - 9
    end

    # Procesar cinco
    n = number/5
    if n > 0
      result += 'V'
      number = number - 5
    end

    n = number/4
    if n > 0
      result += 'IV'
      number = number - 4
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
end
