# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def find_prime_numbers(num)
	interval = (2..num).to_a
	composites = []

	interval.each do |x|
		interval.each do |composite|
			if composite % x == 0 && composite != x
					composites.push(composite)
			end
		end
	end
	return interval - composites
end
