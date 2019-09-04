def square_same_color?(str1, str2)
  a1 = str1.split("")
  a2 = str2.split("")
  sq_1_final = [a1[0].ord-97, a1[1].to_i-1]
  sq_2_final = [a2[0].ord-97, a2[1].to_i-1]
  if sq_2_final.any? { |n| n > 7 } || sq_2_final.any? { |n| n > 7 }
    return "please enter a valid input"
  end
  sums = [sq_1_final, sq_2_final].flatten.sum.even?
  puts "#{str1} is #{sq_1_final.sum.even? ? "BLACK" : "WHITE"} and"
  puts "#{str2} is #{sq_2_final.sum.even? ? "BLACK" : "WHITE"}"
  puts "#{str1} and #{str2} #{sums ? 'ARE' : 'ARE NOT'} the same color."
  sums
end

# returns a random chess square. Good for testing.

def random_chess_board_square
	# chessboard_array =[]
	# "a".upto("h") do |letter|
	#   1.upto(8) do |number|
	#       chessboard_array << "#{letter}#{number}"
	#     end
	#   end
	  chessboard_array = ["a1", "a2", "a3", "a4", "a5", "a6", "a7", "a8", "b1", "b2", "b3", "b4", "b5", "b6", "b7", "b8", "c1", "c2", "c3", "c4", "c5", "c6", "c7", "c8", "d1", "d2", "d3", "d4", "d5", "d6", "d7", "d8", "e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "f1", "f2", "f3", "f4", "f5", "f6", "f7", "f8", "g1", "g2", "g3", "g4", "g5", "g6", "g7", "g8", "h1", "h2", "h3", "h4", "h5", "h6", "h7", "h8"]
	  # p chessboard_array.sample
	  # print "\n"
	chessboard_array.sample
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

