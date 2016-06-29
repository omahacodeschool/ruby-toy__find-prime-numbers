# This method takes a number like 25 and
# returns an array of all the prime numbers in a range 1..n

def find_prime_numbers(num)
	prange = (2..num).to_a
	primes = Array.new
	prange.each do |i| #I want to remove items if they have more than two factors. I can achieve this by removing all multiples of two and then all multiples of three and so on.
		primes.push(i) #adds the current int to the array of primes, next I want to delete any multiples of i
		(2..num).each do |x| #the each loop will go through and remove multiples of i by multiplying them by each number in range
			prange.delete(x*i) #deletes numbers in prange
		end
	end
	return primes
end