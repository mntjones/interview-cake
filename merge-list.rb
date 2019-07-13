# Interview Cake Practice Problem

# In order to win the prize for most cookies sold, 
# my friend Alice and I are going to merge our Girl Scout 
# Cookies orders and enter as one unit.

# Each order is represented by an "order id" (an integer).

# We have our lists of orders sorted numerically already, in arrays. 
# Write a function to merge our arrays of orders into one sorted array.

# For example:

# my_array     = [3, 4, 6, 10, 11, 15]
# alices_array = [1, 5, 8, 12, 14, 19]

# puts merge_arrays(my_array, alices_array)

# prints [1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19]

def merge_arrays(my_array, alices_array) 
	# This answer gives us  O(n lg n)
	new_array = my_array + alices_array
	return new_array.sort

end

puts "First shot: #{merge_arrays([3, 4, 6, 10, 11, 15], [1, 5, 8, 12, 14, 19])}"


