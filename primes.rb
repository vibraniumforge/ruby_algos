def prime_finder(max_number)
	finalArray=[]
	if max_number <=2 
			p "Please enter a number greater than 2."
	end
	2.upto(max_number) do |i|
			result = false
			2.upto(Math.sqrt(i)) do |j|
					if i % j == 0
							result = true
							break
					end
			end
			result ? nil : finalArray << i
	end
	print "The prime numbers under #{max_number} are: \n #{finalArray}\n"
end

prime_finder(100)