#factorial method

def factorial(num)
	factorial_final = 1
	while num >= 1
		factorial_final *= num
		num -= 1
	end
	return factorial_final
end