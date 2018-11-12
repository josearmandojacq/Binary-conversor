require_relative 'conversor_options'

class Menu
  def call
    puts '
      Choose an option:
      1-Convert decimal to binary.
      2-Convert decimal to octal.
      3-Convert decimal to Hex.
      4-Convert binary to decimal.
      5-Convert binary to octal.
      6-Convert binary to Hex.
      7-Convert Hex to decimal.
      8-Convert octal to decimal
      Press any other key for exit
    '
    answer = gets.chomp

    if answer =~ /^-?[0-9]+$/
      puts 'Enter the number to convert:'
      number = gets.chomp
      ConversorOptions.new.call(answer.to_i, number)
    else
      exit
    end
  end
end
