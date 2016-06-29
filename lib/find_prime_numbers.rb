# This method takes a number like 25 and
# returns an array of all the prime numbers in a range 1..n

def find_prime_numbers(num)
	original = (2..num).to_a
	nonprimes = []

	(2..num).each do |divisor|
		original.each do |nonprime|
			if nonprime % divisor == 0 
				if nonprime != divisor
					nonprimes.push(nonprime)
				end
			end
		end
	end
	return original - nonprimes
end
