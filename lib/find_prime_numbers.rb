# This method takes a number like 25 and
# returns an array of all the prime numbers in a range 1..n

def find_prime_numbers(num)
	
	primes = (2..num).to_a
		#set each vaule to two different variales
		(2..num).each do |c|
			(2..num).each do |n|
				#If the value is divisible by another value in the array and the value does nto equal itself..
				if (c % n ==0 && n != c)
					#delete that number from the array.
					primes.delete(c)
				break
			end
		end
	end
	return primes
end
