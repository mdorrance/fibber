require 'pry'

class Fibber
  fibs = []
  @fibs = fibs

  def long_fib_generator(quantity)

    quantity = quantity
    if quantity >= 2
      @fibs = [0,1]
      (quantity - 2).times do
        a = @fibs[-1]
        b = @fibs[-2]
        sum = a + b
      @fibs.push(sum)

      end
    elsif
      quantity == 1
      @fibs.push(0)
    else
      quantity < 1
      puts "Please enter a number greater than 1."
      get_input
    end
    print_right
    end
    def line_width
      @fibs[-1].to_s.length.to_i + 1
    end
    def print_right
      by_fives = @fibs.each_slice(5).to_a
      by_fives.each do |arr|
        arr.each do |inner|
          print inner.to_s.rjust(line_width) << " "
        end
        print "\n"
    end
    # print by_fives
    # print fibs
    # single_row = fibs.join(' ')
    # puts single_row
    # puts single_row.length
    # puts quantity
  end
  #fib.long_fib_generator(22)
  def get_input
    puts "How many numbers do you want to see in your Fibbonacci Sequence?\n"
    input = gets.chomp
    quantity = input.to_i
    long_fib_generator(quantity)
    play_again
  end
  def play_again
    puts "Do you want to play again? Yes or No"
    input = gets.chomp
    if input.downcase == "yes"
      get_input
    end
  end
end

fib = Fibber.new
fib.get_input