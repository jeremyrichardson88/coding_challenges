#ItemCount

# Your task is to write a Ruby program that counts each type of fruit in the array and displays the count results in a hash.  The
# keys of the hash should be the name of the fruit being counted, and the values should be the total count of that type of fruit.
# For instance, given an array like this:
# ['apple', 'apple', 'orange', 'grape', 'grape', 'strawberry', 'strawberry' 'strawberry']

# The resulting hash should look like this:
# {'apple' => 2, 'orange' => 1, 'grape' => 2,  'strawberry' => 3}

bucket = ["orange", "plum", "strawberry", "blueberry", "strawberry", "apple", "peach", "orange", "grape", "apple", "peach", "strawberry", "peach", "peach", "apple", "apple", "apple", "apple", "strawberry", "strawberry", "blueberry", "orange", "apple", "strawberry", "apple", "peach", "peach", "peach", "grape", "apple", "blueberry", "strawberry", "strawberry", "blueberry", "orange", "peach", "orange", "strawberry", "apple", "orange", "peach", "strawberry", "grape", "strawberry", "apple", "plum", "strawberry", "apple", "peach", "orange", "grape", "apple", "peach", "strawberry", "blueberry", "blueberry", "grape", "blueberry", "strawberry", "strawberry", "strawberry", "peach", "strawberry", "strawberry", "blueberry", "strawberry", "strawberry", "strawberry", "peach", "apple", "peach", "grape", "blueberry", "grape", "apple", "peach", "apple"]

#start with bucket.group_by{|x| x} to create a k,v hash with each unique
#v in its own a array. Then map that with k,v to put each previous instance of
#k and v with count into an array. This creates an array of arrays which just needs
#to be wrapped in Hash[] to get the hash style output. 
hash = Hash[bucket.group_by { |x| x }.map { |k,v| [k, v.count]}]

puts hash

