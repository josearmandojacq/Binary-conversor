class DecimalToBinary
  def call(number)
    binary = []

    while number >= 1
      binary << number % 2
      number /= 2
    end

    binary.reverse.join('')
  end
end
