# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def find_prime_numbers(num)
	#check if the input is 0 or less, if the input is a float, if the input is a string, and if the input is equal to 1
	if num.to_s.to_i < 1 || num != num.to_i || num == num.to_s || num == 1
		#if the input is not a positive integer then let them know
		puts "Your number was not valid"
		#stop the rest of the method from being executed
		return
	end
	#change the range of numbers into an array where each element is a number in the range
	range_of_numbers = (2..num).to_a
	#go through each element in the array
	range_of_numbers.each do |element|
		#as long as the current element isn't the last element
		if element != range_of_numbers[-1]
			#go through the array
			range_of_numbers.delete_if do |number|
				#and delete the numbers that can be divided evenly by the current element but not if they are the same
				number % element == 0 && number != element
			end
		end
	end
	#return the prime numbers left in the array
	puts range_of_numbers.join(" ")

end
#testing...
find_prime_numbers(30)
find_prime_numbers(9)
find_prime_numbers(2.2)
find_prime_numbers(-5)
find_prime_numbers(1)
find_prime_numbers("josh")
find_prime_numbers(1000)
find_prime_numbers(25)