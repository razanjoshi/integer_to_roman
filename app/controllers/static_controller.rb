class StaticController < ApplicationController
  def show
    if params[:input] && (1..3999).include?(params[:input].to_i)
      @roman = find_roman(params[:input].to_i)
    else
      @message = "Please enter between 1 to 3999"
    end
    render params[:page]
  end

  def find_roman(input)
    roman_numbers = {
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
    
    n = input
    roman = ""
    roman_numbers.each do |value, letter|
      roman << letter*(n / value)
      n = n % value
    end
    return roman
  end
end
