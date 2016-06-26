# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

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
