require 'old_roman_numerals'

RSpec.describe OldRomanNumeral do
  describe '#convert' do
    it 'returns I for a 1' do
      roman_numeral = OldRomanNumeral.new
      expect(roman_numeral.convert(1)).to eq('I')
    end

    it 'returns II for a 2' do
      roman_numeral = OldRomanNumeral.new
      expect(roman_numeral.convert(2)).to eq('II')
    end

    it 'returns IIII for a 4' do
      roman_numeral = OldRomanNumeral.new
      expect(roman_numeral.convert(4)).to eq('IIII')
    end

    it 'returns V for a 5' do
      roman_numeral = OldRomanNumeral.new
      expect(roman_numeral.convert(5)).to eq('V')
    end

    it 'returns VIIII for a 9' do
      roman_numeral = OldRomanNumeral.new
      expect(roman_numeral.convert(9)).to eq('VIIII')
    end

    it 'returns MCMLXXIII for 1973' do
      roman_numeral = OldRomanNumeral.new
      expect(roman_numeral.convert(1973)).to eq('MDCCCCLXXIII')
    end

    it 'returns MCMXCIX for 1999' do
      roman_numeral = OldRomanNumeral.new
      expect(roman_numeral.convert(1999)).to eq('MDCCCCLXXXXVIIII')
    end

    it 'returns MMXIX for 2019' do
      roman_numeral = OldRomanNumeral.new
      expect(roman_numeral.convert(2019)).to eq('MMXVIIII')
    end

    it 'returns MMM for 3000' do
      roman_numeral = OldRomanNumeral.new
      expect(roman_numeral.convert(3000)).to eq('MMM')
    end
  end
end
