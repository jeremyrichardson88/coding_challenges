#FizzBuzz

# Write a program in Ruby that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the 
# number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz".

#Iterate through each number and use modulo to see
#if number is divisible by both 3 and 5 or 3 and 5 seperately
(1..100).each do |n|
  #Must be first or fizzbuzz won't be called
  if n%3 == 0 && n%5 == 0
  	print "FizzBuzz "
  elsif n%3 == 0
  	print "Fizz "
  elsif n%5 == 0
  	print "Buzz "
  else
    print "#{n} "
  end
end