#uniques method returns the array without any duplicates

def uniques(array)
	unique_array = []
	while array.length > 0
		test_element = array.pop
		array.each_with_index do |element,index|
			if test_element == element
				array.delete_at(index)
			end
		end
		unique_array.push(test_element)
	end
	unique_array
end

# BETTER ANSWER
# instead of modifying the original array
# just use .include? to see if the element is 
# in the unique array
# array[0..-i]
