# Archive User from app
class FindRoman
  attr_reader :integer
  class ValidityError < StandardError
    MESSAGE = 'Please input between 1 to 3999.'
  end

  ROMAN_NUMBERS = {
    1000 => "M",  
    900 => "CM",  
    500 => "D",  
    400 => "CD",
    100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I",  
  }

  def initialize(integer)
    @integer = integer
  end

  def call
    n = integer
    raise ValidityError, ValidityError::MESSAGE if !(1..3999).include?(n)
    roman = ""
    ROMAN_NUMBERS.each do |value, letter|
      roman << letter*(n / value)
      n = n % value
    end
    roman
  end
end
