#The sequence begins with the numbers 0 and 1. From there, each element is the sum of the previous two elements.

# Start with 0 and 1
# 0 plus 1 is (1)
# 1 plus 1 is (2)
# 1 plus 2 is (3)
# 2 plus 3 is (5)
# 3 plus 5 is (8)
# 5 plus 8 is (13)
# 8 plus 13 is (21)
# So the sequence starts 0, 1, 1, 2, 3, 5, 8, 13, 21.

#TEMPLATE
# quantity = 15

# your code here
#
# Challenge 1: Jagged Output
#
# Output should come in rows of five elements. Running the program with quantity set to fifteen would output the following:
#
# 0 1 1 2 3
# 5 8 13 21 34
# 55 89 144 233 377
require 'pry'

class Fibber
  # def fibgenerate(quantity)
  #   #quantity is the quantity of numbers generated, so if quantity = 7 then it will generate the array [0,1,1,2,3,5,8]
  #   #build the array of fibs until answers = quantity
  #   number_of_fibs = []
  #   number_of_fibs.reduce([]) do |result, quantity|
  #     if number_of_fibs.length = 0
  #       result = 0 << number_of_fibs
  #       result += 1 << number_of_fibs
  #       quantity -= quantity
  #     elsif
  #
  #     end
  #     binding.pry
  #     result
  #   end
  #
  #   quantity
  #
  # end

  def long_fib_generator(quantity)
    fibs = []
    quantity = quantity
    if quantity >= 2
      fibs = [0,1]
      (quantity - 2).times do
        a = fibs[-1]
        b = fibs[-2]
        sum = a + b
      fibs.push(sum)

        end
    else
      quantity == 1
      fibs.push(0)
    end
    by_fives = fibs.each_slice(5).to_a
    by_fives.each do |arr|
      arr.each do |inner|
        print inner.to_s.rjust(fibs[-1].to_s.length.to_i + 1) << " "
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
end

fib = Fibber.new
puts "How many numbers do you want to see in your Fibbonacci Sequence?\n"
input = gets.chomp
quantity = input.to_i
fib.long_fib_generator(quantity)