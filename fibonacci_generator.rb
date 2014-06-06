#Fibonacci Generator

# Write a program in Ruby that prints the [Fibonacci numbers](http://en.wikipedia.org/wiki/Fibonacci_number) up to a 
# user-provided upper-bound. The sequence should begin with the number 1. 
# For instance, for a user input of 300, the correct Fibonacci sequence would be: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233

puts "Enter a number"
#Get user input and make integer.
input = gets.chomp.to_i


def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
	yield i1
	i1, i2 = i2, i1+i2
  end
end
#Run method and output yield to a block
fib_up_to(input) { |f| print f, " " }


