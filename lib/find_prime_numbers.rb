# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def find_prime_numbers(num)

	## Getting the array built 

int = num.to_i
array = [*3..int]
array.delete_if { |i| i%2 == 0 }
array.unshift(2)
## Array now contains odd numbers up to num and 2 (the only even prime)

sqrt = Math.sqrt(int).to_i
##per Sieve of Eratosthenes, need to perform analysis only up to square root of num

array_sqrt_index = array.index(sqrt)
#array_sqrt_index is the stopping point


while array[i] <= array[array_sqrt_index]
	prime = true
	
# 			3.upto(sqrt) do |i| 
# 			if (j % i == 0)
# 				prime = false
# 			end
# 		end
# 	if unique = true
# 		prime_array << array[i]
# 	end
# end

# puts array.join("")
# puts sqrt
# puts array_sqrt_index
end
