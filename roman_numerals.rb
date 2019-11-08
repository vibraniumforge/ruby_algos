def to_roman(input_decimal_number)
  nums_hash = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
	result_string = ''
	num = input_decimal_number
	puts "The roman numeral from #{input_decimal_number} is"
	decimal_numbers = nums_hash.keys
	decimal_numbers.each do |key|
		quotient = (num / key).floor
		if quotient >= 1
			quotient.times do 
				result_string << nums_hash[key]
				num -= key
			end
		end
	end
	p result_string
end

def randomize
	to_roman((1...2000).to_a.sample)
end
to_roman(599)
# randomize()