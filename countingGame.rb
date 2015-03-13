# counting game problem
# limit param is where to stop

def counting_game(limit,num_players)
	# first create an array with the players
	players = (1..num_players).to_a
	
	# we're starting at the first index (which is 1)
	current_index = 0
	
	# direction = true for ascending, false for descending
	direction = true #I decided to make this boolian for easy inverting
	
	# current_number is the counting number, starts at 1
	current_number = 1
	
	# BEGIN get next index method
	def get_next_index(current_index, direction, num_players)
		if direction == true
			if current_index == num_players - 1
				0
			else
				current_index += 1
			end
		else
			if current_index == 0
				num_players - 1
			else
				current_index -= 1
			end
		end
	end
	# END get next index method

	# BEGIN while loop until the limit is reached
	while current_number <= limit
		puts "Player #{players[current_index]}: #{current_number}"
		current_number += 1	

		# get the next index
		current_index = get_next_index(current_index,direction,num_players)	

		# BEGIN check if number is divisible by 11
		# We actually want to make sure that the remainder is
		# 1 because it's the NEXT person that's skipped
		# I included the logic checking if the number is > 11
		# to ensure that the first person doesn't trigger as well
		if current_number % 11 == 1 && current_number >= 10
			# if this is true we just want to run the get next 
			# method one more time.
			current_index = get_next_index(current_index,direction,num_players)
		end
		# END check if number is divisible by 11

		# BEGIN check if number is divisible by 7
		# Important: this has to come AFTER the 
		# check to see if the current_number is divisible by 11
		# otherwise you'll change direction too soon.
		if current_number % 7 == 0
			direction = !direction
		end
		# END check if number is divisible by 7

	end
	# END while loop until the limit is reached
end

puts counting_game(100,21)