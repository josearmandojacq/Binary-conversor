require_relative 'menu'

class OctalToDecimal
  def call(number)
    values = [1, 8, 64, 512, 4096]
    numbers_to_add = []

    number = number.to_s.split('').reverse

    if number.length > values.length
      puts 'The number is too big'
      Menu.new.call
    else
      number.each_with_index do |value, index|
        numbers_to_add << value.to_i * values[index]
      end
    end
    numbers_to_add.inject(0) { |result,x| result + x }
  end
end
