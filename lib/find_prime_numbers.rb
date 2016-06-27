# This method takes a number like 25 and
# returns an array of all the prime numbers in a range 1..n

def find_prime_numbers(num)
  num_array = [*2..num]
  for i in num_array
     p = 2 * i
      while p <= num do
        num_array.delete p
        p += i
      end
  end
  
  return num_array
end