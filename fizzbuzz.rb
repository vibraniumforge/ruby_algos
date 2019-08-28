def fizzbuzz(max)
  1.upto(max) do |i|
  if i % 15 == 0
    puts "#{i} - FIZZBUZZ."
  elsif i % 5 == 0
    puts "#{i} - BUZZ."
  elsif i % 3 == 0
    puts "#{i} - FIZZ."
  else
    puts i
  end
end

end

fizzbuzz(100)

# def fizzbuzz(max)
#   i = 1
#   loop do
#     if i > max
#       break
#     elsif i % 15.zero?
#       puts "#{i} - FIZZBUZZ."
#     elsif i % 5.zero?
#       puts "#{i} - BUZZ."
#     elsif i % 3.zero?
#       puts "#{i} - FIZZ."
#     else
#       puts i
#     end
#     i += 1
#   end
# end

# fizzbuzz(30)
