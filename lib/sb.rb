	num = 59.3
	int = num.to_i


	array = [*3..int]
	array.delete_if { |i| i%2 == 0 }
	array.unshift(2)
	## Built an array containing odd numbers up to num and 2 (the only even prime)

	sqrt = Math.sqrt(int).to_i
	##per Sieve of Eratosthenes, need to perform analysis only up to square root of num

	array_sqrt_index = array.index(sqrt)

		array.each do |divisor|
			array.delete_if do |numerator|
				numerator != divisor && numerator % divisor == 0 
			end
		end

	puts "the number given was #{num}"
	puts "the integer of the number given is #{int}"
	puts "the array of possible primes up to that integer is #{array.join(" ,")}"
	puts "the square root of num is #{sqrt}"
	puts "and it can be found at #{array_sqrt_index}" 