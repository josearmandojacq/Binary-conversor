require_relative 'binary_to_decimal'
require_relative 'decimal_to_hex'

class BinaryToHex
  def call(number)
    result = BinaryToDecimal.new.call(number)
    DecimalToHex.new.call(result)
  end
end
