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


def merge2 (mine, alice)

	merged = []
	my_pointer = mine[0]
	alice_pointer = alice[0]

	count = (mine + alice).length

	count.times do 
		if my_pointer<alice_pointer
			merged<< my_pointer
			mine.shift
			if mine.length > 0 
				my_pointer = mine[0]
			else
				my_pointer = 1000000
			end

		else
			merged << alice_pointer
			alice.shift
			if alice.length > 0 
				alice_pointer = alice[0]
			else
				alice_pointer = 1000000
			end
		end
	end

	return merged

end


puts "Second shot: #{merge2([3, 4, 6, 10, 11, 15], [1, 5, 8, 12, 14, 19])}"

def recommended_merge(m, a)

	merged_array_size = m.length + a.length
  merged_array = Array.new(merged_array_size)

  current_index_alices = 0
  current_index_mine = 0
  current_index_merged = 0

  while current_index_merged < merged_array_size
    is_my_array_exhausted = current_index_mine >= m.length
    is_alices_array_exhausted = current_index_alices >= a.length

    # case: next comes from my array
    # my array must not be exhausted, and EITHER:
    # 1) Alice's array IS exhausted, or
    # 2) the current element in my array is less
    #    than the current element in Alice's array
    if !is_my_array_exhausted && (is_alices_array_exhausted ||
       (m[current_index_mine] < a[current_index_alices]))

      merged_array[current_index_merged] = m[current_index_mine]
      current_index_mine += 1

    # case: next comes from Alice's array
    else
      merged_array[current_index_merged] = a[current_index_alices]
      current_index_alices += 1
    end

    current_index_merged += 1
  end

  merged_array

end

puts "Recommended: #{recommended_merge([3, 4, 6, 10, 11, 15], [1, 5, 8, 12, 14, 19])}"


# Bonus
# What if we wanted to merge several sorted arrays? Write a method that takes as an 
# input an array of sorted arrays and outputs a single sorted array with all the items 
# from each array.

# Do we absolutely have to allocate a new array to use for the merged output? 
# Where else could we store our merged array? How would our method need to change?