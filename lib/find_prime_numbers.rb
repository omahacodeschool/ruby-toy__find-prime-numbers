# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def find_prime_numbers(num)
	if num.to_s.to_i < 1 || num != num.to_i || num == num.to_s || num == 1
		puts "Your number was not valid"
		return
	end

	range_of_numbers = (2..num).to_a

	range_of_numbers.each do |element|
		if element != range_of_numbers[-1]
			range_of_numbers.delete_if do |number|
				number % element == 0 && number != element
			end
		end
	end
	puts range_of_numbers.join(" ")

end

find_prime_numbers(30)
find_prime_numbers(9)
find_prime_numbers(2.2)
find_prime_numbers(-5)
find_prime_numbers(1)
find_prime_numbers("josh")
find_prime_numbers(1000)
find_prime_numbers(25)