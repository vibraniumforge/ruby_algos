require "pry"
def bishop_moves(arr)
	result_ar=[]
	i = arr[0]
  j = arr[1]
		# up and right
	while i.between?(0,7) && j.between?(0,7) 
		result_ar << [i, j] if [i, j] !=arr
		i+=1
		j+=1
	end
	# down and right
	i = arr[0]
  j = arr[1]
	while i.between?(0,7) && j.between?(0,7) 
		result_ar << [i, j] if [i, j] !=arr
		i+=1
		j-=1
	end
		# up and left
	i = arr[0]
	j = arr[1]
	while i.between?(0,7) && j.between?(0,7) 
		result_ar << [i, j] if [i, j] !=arr
		i-=1
		j+=1
	end
		# down and left
	i = arr[0]
	j = arr[1]
	while i.between?(0,7) && j.between?(0,7) 
		result_ar << [i, j] if [i, j] !=arr
		i-=1
		j-=1
	end	
	result_ar
end

bishop_moves([4,4])
		