# This method takes a number like 25 and
# returns an array of all the prime numbers in a range 1..n

def find_prime_numbers(num)
    arrayofnum=(0..num).to_a
    arrayofnum[0]=nil
    arrayofnum[1]=nil
    #This above part took me a long time.  I had to deal with the 0 and 1 that were the first two parts of the array (arrayofnum).  Neither are prime...so I thought I'd remove them. 
    #I couldn't figure out why shift wouldn't work!  I had to set them as nil values. This took a lot of tinkering here.  I had to add what is line 11 as well, to make it work.
    num.times do |x|
        if(arrayofnum[x]!=nil) then
        isitprime=2*x
            while isitprime <= num do
                arrayofnum[isitprime]=nil
                isitprime+=x
                #This will take all results of multiplying the value being checked x by 2 and making them a nil value instead.  This removes all multiples (and since primes are not multiples, we want any multiples removed)
                #It also skips over the nil values already changed by the conditional.  
            end
        end
        end
    arrayofnum.compact!
end
