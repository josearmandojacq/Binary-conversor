require_relative 'binary_to_decimal'
require_relative 'decimal_to_octal'

class BinaryToOctal
  def call(number)
    decimal = BinaryToDecimal.new.call(number)
    DecimalToOctal.new.call(decimal)
  end
end
