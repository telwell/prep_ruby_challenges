#create is_prime? method

def is_prime?(num)
	#first let's get all of the num's factors
	factors = [1,num]
	counter = Math.sqrt(num).ceil
	while counter > 1
		if num % counter == 0
			factors << counter
			factors << num/counter
		end
		counter -= 1
	end
	
	#now, if this .length is > 2 it isn't prime
	if factors.length == 2
		return true
	else
		return false
	end
end