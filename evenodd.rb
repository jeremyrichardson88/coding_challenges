#EvenOdd

# Located in this directory is a text file containing 500 randomly selected integers. Write a Ruby script that separates 
# the odd from the even numbers, sorts them, and writes them each to separate files, (odd.txt and even.txt)

nums = []

#Put all numbers into array from file instead of writing
#them by hand. Also assuming numbers.txt is in same directory 
#as ruby file.
File.open('numbers.txt', 'r') do |f|
  f.lines.each do |line|
    nums << line.to_i
  end  
end

odds = []
evens = []

#Could've did if else but this is more specific but
#In the end I would choose whichever method compiles faster
nums.each do |num|
  odds << num if num.odd?
  evens << num if num.even?
end

#use bang method in order to modify array
odds.sort!
evens.sort!

#use a+ to read and append
odds.each do |odd|
  File.open('\Users\Jeremy\Desktop\odd.txt', 'a+') { |f| f.write("#{odd}\n") }
end

evens.each do |even|
  File.open('\Users\Jeremy\Desktop\even.txt', 'a+') { |f| f.write("#{even}\n") }
end  
