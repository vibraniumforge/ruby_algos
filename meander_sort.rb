def meander_sort(array)
	sorted_ar = array.sort
	final_ar = []
	i = 0
	j = sorted_ar.length - 1
	while i <=j && i < sorted_ar.length - 1
		final_ar << sorted_ar[j]
		if i != j
			final_ar << sorted_ar[i]
		end
		i += 1
		j -= 1
	end
	p final_ar
end

meander_sort([5, 3, 4, 1, 2])
# [1, 2, 3, 4, 5, 6, 7] => [7, 1, 6, 2, 5, 3, 4]