# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

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
