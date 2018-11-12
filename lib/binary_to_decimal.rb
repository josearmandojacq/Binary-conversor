class BinaryToDecimal
  def call(number)
    values = [1, 2, 4, 8, 16, 32, 64, 128]
    result = 0
    number_to_convert = []

    if number.length <= values.length
      number = number.split('').reverse

      number.each do |item|
        number_to_convert << item.to_i
      end

      number_to_convert.each_with_index do |item, index|
        result += values[index] if item == 1
      end

      result
    else
      'Sorry only number in 8Bits(xxxxxxxx)'
    end
  end
end
