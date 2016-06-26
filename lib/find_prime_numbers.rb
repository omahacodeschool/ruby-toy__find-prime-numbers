# This method takes a number like 25 and
# returns an array of all the prime numbers in a range 1..n

def find_prime_numbers(num)
	arr =[]
    (2..num).each{|x| arr.push(x)}

    i = 0
    p = arr[i]

    while p != arr[-1]
	    arr.delete_if{|n| n%p == 0 && n != p}
	    i+= 1
	    p = arr[i]
    end
    return arr
end
