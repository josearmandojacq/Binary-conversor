require_relative 'decimal_to_binary'
require_relative 'decimal_to_octal'
require_relative 'decimal_to_hex'
require_relative 'binary_to_octal'
require_relative 'binary_to_decimal'
require_relative 'binary_to_octal'
require_relative 'binary_to_hex'
require_relative 'hex_to_decimal'
require_relative 'octal_to_decimal'
require_relative 'menu'

class ConversorOptions
  def call(answer, number)
    case answer
    when 1
      puts "Result: #{DecimalToBinary.new.call(number.to_i)}"
      continue
    when 2
      puts "Result: #{DecimalToOctal.new.call(number.to_i)}"
      continue
    when 3
      puts "Result: #{DecimalToHex.new.call(number.to_i)}"
      continue
    when 4
      puts "Result: #{BinaryToDecimal.new.call(number)}"
      continue
    when 5
      puts "Result: #{BinaryToOctal.new.call(number)}"
      continue
    when 6
      puts "Result: #{BinaryToHex.new.call(number)}"
      continue
    when 7
      puts "Result: #{HexToDecimal.new.call(number)}"
      continue
    when 8
      puts "Result: #{OctalToDecimal.new.call(number.to_i)}"
      continue
    when 0
      exit
    end
  end

  private

  def continue
    puts 'Continue(y/n)'
    continue = gets.chomp

    continue.eql?('y') ? Menu.new.call : exit
  end
end
