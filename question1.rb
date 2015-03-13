# power question. create param power which takes
# base and exponent w/o using **

def power(base,exponent)
	final_answer = 1
	exponent.times do
		final_answer *= base
	end
	final_answer
end