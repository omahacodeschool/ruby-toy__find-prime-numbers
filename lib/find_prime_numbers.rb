# This method takes a number like 25 and
# returns an array of all the prime numbers in a range 1..n

def find_prime_numbers(num)

	if num.is_a?(Integer) == false
		return "Bad input, value must be number"
	elsif num <= 1
		return "Bad input, value must be greater than 1"
	elsif num % 1 != 0
		return "Bad input, no floating numbers allowed"
	end
			


	newarr = [2]
	x = 3

	while x < num
		prime= "yes"
		y = 0

		if x % 2 != 0

			while y < newarr.length
				if x % newarr[y]  == 0
					y = newarr.length
					prime = "no"
				else
					y += 1
				end
			end

			if prime == "yes"
				newarr << x
			end
		end

		x += 1

	 end 

	 return newarr
	
end
