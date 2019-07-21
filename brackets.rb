# You're working with an intern that keeps coming to you with JavaScript 
#code that won't run because the braces, brackets, and parentheses are off. 
#To save you both some time, you decide to write a braces/brackets/parentheses 
#validator.

# Let's say:

# '(', '{', '[' are called "openers."
# ')', '}', ']' are called "closers."
# Write an efficient function that tells us whether or not an input string's 
#openers and closers are properly nested.

# Examples:

# "{ [ ] ( ) }" should return true
# "{ [ ( ] ) }" should return false
# "{ [ }" should return false

str1 = "(({[]}))"
str2 = "{()[}]"


def brackets (str)

	opener = []

	bracket_sets = {'('=>')', '{' => '}', '[' =>']'}

	o = bracket_sets.keys
	c = bracket_sets.values

	str.chars.each do |char|
		if o.include?(char)
			opener << char
		elsif c.include?(char)
			if opener.empty?
				return false
			else
				last_open = opener.pop
				if bracket_sets[last_open] != char
					return false
				end
			end	
		end
	end

	return opener.empty?
end

puts brackets(str1)
puts brackets(str2)