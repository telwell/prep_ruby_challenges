#combinations takes two arrays of strings and
#returns array with combinations of them

def combinations(first_array,second_array)
	final_array = []
	first_array.each do |first_element|
		second_array.each do |second_element|
			final_array << first_element + second_element
		end
	end
	final_array
end