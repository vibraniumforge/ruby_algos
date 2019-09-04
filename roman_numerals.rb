def to_roman(num)
  nums_hash = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
	result_string = ''
	puts "The roman numeral from #{num} is"
	nums_hash_keys = nums_hash.keys
	nums_hash_keys.each do |key|
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

randomize()