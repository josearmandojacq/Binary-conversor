require_relative '../helpers/hex_helper'

class DecimalToHex
  def call(number)
    hex = []

    while number >= 1
      rest = number % 16
      if HEX_MAPPING.key?(rest)
        hex << HEX_MAPPING[rest]
      else
        hex << rest
      end
      number /= 16
    end

    hex.reverse.join('')
  end
end
