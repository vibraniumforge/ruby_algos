# frozen_string_literal: true

def weight_loss(weight)
  i = weight
  puts "weight = #{weight}."
  loop do
    puts "The percent weight loss from #{weight} to #{i} is #{(
           (weight - i) / weight.to_f
         )
           .round(2)} percent."
    break if i == 175

    i -= 1
  end
end

weight_loss(225)
