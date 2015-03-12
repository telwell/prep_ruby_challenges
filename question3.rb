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
	return unique_array
end