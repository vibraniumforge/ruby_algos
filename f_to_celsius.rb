def convert_f_to_c(num)
  if  num.class == Integer || num.class == Float
     puts (num -32) * 5/9
  else
    puts "Please enter a number"
  end
end

convert_f_to_c(110)