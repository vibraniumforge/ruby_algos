def square_same_color?(str1, str2)
  a1 = str1.split("")
  a2 = str2.split("")
  sq_1_final = [a1[0].ord-97, a1[1].to_i-1]
  sq_2_final = [a2[0].ord-97, a2[1].to_i-1]
  if sq_2_final.any? { |n| n > 7 } || sq_2_final.any? { |n| n > 7 }
    return "please enter a valid input"
  end
  sums = [sq_1_final, sq_2_final].flatten.sum.even?
  puts "#{str1} is #{sq_1_final.sum.even? ? "WHITE" : "BLACK"} and"
  puts "#{str2} is #{sq_2_final.sum.even? ? "WHITE" : "BLACK"}"
  puts "#{str1} and #{str2} #{sums ? 'ARE' : 'ARE NOT'} the same color."
  sums
end

# returns a random chess square. Good for testing.

def random_chess_board_square
  final_ar=[]
  "a".upto("h") do |letter|
    1.upto(8) do |number|
      final_ar << "#{letter}#{number}"
    end
  end
  final_ar.sample
end

# Test a bunch of times

def test_many
  result_hash={}
  1000.times do
    x = square_same_color?(random_chess_board_square, random_chess_board_square)
    result_hash[x] ? result_hash[x] += 1 : result_hash[x] = 1
  end
  p result_hash
end
  
  # square_same_color("a1", "c3")
  # => true

  # square_same_color("a1", "h3")
  # => false

  # square_same_color("a1", "i3")
  # => error

  square_same_color?(random_chess_board_square, random_chess_board_square)
  # create random squares and test them

  # test_many()
  # => {true=>500, false=>500}

