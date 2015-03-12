#rectangle overlap problem

def overlap(first_coords,sec_coords)
	#see if there's overlap on x-axis
	if (first_coords[0][0] <= sec_coords[0][0]) && (first_coords[1][0] > sec_coords[0][0])
		#see if there's overlap on y-axis
		if (first_coords[0][0] <= sec_coords[0][1]) && (first_coords[1][1] > sec_coords[0][1])
			return true
		else 
			return false
		end
	else
		return false
	end
end

#overlap([[0,0],[3,3]],[[1,1],[4,5]])