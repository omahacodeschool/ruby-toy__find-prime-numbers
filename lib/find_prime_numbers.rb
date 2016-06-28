# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def find_prime_numbers(num)
 	int = num.to_i
	array = [*3..int]
	array.delete_if { |i| i%2 == 0 }
	array.unshift(2)
	## Built an array containing odd numbers up to num and 2 (the only even prime)
		
	array.each do |divisor|
		array.delete_if do |numerator|
			numerator != divisor && numerator % divisor == 0 
		end
	end

	
	return array
end
