require_relative 'lib/menu'

class Main
  def call
    puts 'Welcome to Binary Conversor'
    puts '.' * 20
    Menu.new.call
  end
end

Main.new.call
