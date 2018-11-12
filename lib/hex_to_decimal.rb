require_relative '../helpers/hex_helper'

class HexToDecimal
  def call(number)
    values = [1, 16, 256, 4096]
    numbers_to_add = []

    if number.length <= values.length
      number = number.split('').reverse

      number.each_with_index do |value, index|
        if value =~ /[[:alpha:]]/
          value = value.upcase
          if HEX_MAPPING.value?(value)
            numbers_to_add << HEX_MAPPING.key(value) * values[index]
          else
            puts 'Wrong number'
            exit
          end
        else
          numbers_to_add << value.to_i * values[index]
        end
      end

      numbers_to_add.inject(0) { |result,x| result + x }
    end
  end
end
