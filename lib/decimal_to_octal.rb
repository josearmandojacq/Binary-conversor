class DecimalToOctal
  def call(number)
    octal = []

    while number >= 1
      octal << number % 8
      number /= 8
    end

    octal.reverse.join('').to_i
  end
end
