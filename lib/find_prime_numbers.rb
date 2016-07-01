# This method takes a number like 25 and
# returns an array of all the prime numbers in a range 1..n

def find_prime_numbers(num)
	interval = (2..num).to_a
	composites = []

	interval.each do |x|
		interval.each do |y|
			if y % x == 0 && y != x
					composites.push(y)
			end
		end
	end
	return interval - composites
end
