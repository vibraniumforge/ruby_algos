def convert_f_to_c(num)
  if  num.class == Integer || num.class == Float
    p ((num -32) * 5/9.0).to_i
  else
    puts "Please enter an integer"
  end
end

def convert_c_to_f(num)
  if num.class == Integer || num.class == Float
    p (num * (9.0/5) + 32).to_i
  else
    puts "Please enter an integer"
  end
end

convert_f_to_c(72)
convert_c_to_f(20)

# Notice that .to_i takes a float, converts it to an int, and rounds it down. So maybe there are more accurate ways? I will let you optimize this.

def test(max)
  temps = (0..max).to_a
  temps.each do |temp|
    convert_c_to_f(temp)
  end
end

# test(100)