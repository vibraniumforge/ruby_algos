require "pry"

# helper methods

def convert_chess_notation_to_array(str)
	array_notation_ar = []
	convert_horizontal_hash = {"a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f"=> 5, "g"=> 6, "h"=> 7}
	convert_vertical_hash = {"1" => 7, "2" => 6, "3" => 5, "4" => 4, "5" => 3, "6" => 2, "7" => 1, "8" => 0}
	horizontal_coord = convert_horizontal_hash[(str.split("")[0])]
	vertical_coord = convert_vertical_hash[(str.split("")[1])]
	array_notation_ar.push(vertical_coord, horizontal_coord)
end
  
def convert_array_to_chess_notation(array)
	# vertical and horizontal are switched here. So array[1] and array[0] are switched too
	convert_horizontal_hash = {"a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f"=> 5, "g"=> 6, "h"=> 7}
	convert_vertical_hash = {"1" => 7, "2" => 6, "3" => 5, "4" => 4, "5" => 3, "6" => 2, "7" => 1, "8" => 0}
	horizontal_coord = convert_horizontal_hash.key(array[1])
	vertical_coord = convert_vertical_hash.key(array[0])
	result = "#{horizontal_coord}#{vertical_coord}"
end   

def bishop_and_pawn(str1, str2)
  arr = convert_chess_notation_to_array(str1).flatten
	possible_bishop_squares_ar = []
	i = arr.first
  j = arr.last
		# up and right
	while i.between?(0,7) && j.between?(0,7) 
		possible_bishop_squares_ar << [i, j] if [i, j] !=arr
		i+=1
		j+=1
	end
		# down and right
	i = arr[0]
  j = arr[1]
	while i.between?(0,7) && j.between?(0,7) 
		possible_bishop_squares_ar << [i, j] if [i, j] !=arr
		i+=1
		j-=1
	end
		# up and left
	i = arr[0]
	j = arr[1]
	while i.between?(0,7) && j.between?(0,7) 
		possible_bishop_squares_ar << [i, j] if [i, j] !=arr
		i-=1
		j+=1
	end
		# down and left
	i = arr[0]
	j = arr[1]
	while i.between?(0,7) && j.between?(0,7) 
		possible_bishop_squares_ar << [i, j] if [i, j] !=arr
		i-=1
		j-=1
	end	
	x = possible_bishop_squares_ar.map do |result|
		convert_array_to_chess_notation(result)
	end
	# p possible_bishop_moves
	print "The bishop at square #{str1} #{compare_squares(x, str2) ? "CAN" : "CAN NOT"} capture the pawn at #{str2}."
	compare_squares(x, str2)
end

def compare_squares(x, str2)
  x.include?(str2)
end

def random_chess_board_square
	# chessboard_array =[]
	# "a".upto("h") do |letter|
	#   1.upto(8) do |number|
	#     chessboard_array << "#{letter}#{number}"
	#   end
	  # end
	  chessboard_array = ["a1", "a2", "a3", "a4", "a5", "a6", "a7", "a8", "b1", "b2", "b3", "b4", "b5", "b6", "b7", "b8", "c1", "c2", "c3", "c4", "c5", "c6", "c7", "c8", "d1", "d2", "d3", "d4", "d5", "d6", "d7", "d8", "e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "f1", "f2", "f3", "f4", "f5", "f6", "f7", "f8", "g1", "g2", "g3", "g4", "g5", "g6", "g7", "g8", "h1", "h2", "h3", "h4", "h5", "h6", "h7", "h8"]
	  # p chessboard_array.sample
	  # print "\n"
	chessboard_array.sample
  end

def test_many(num)
	num.times do
		bishop_and_pawn(random_chess_board_square, random_chess_board_square)
  end
end

# def test_many(num)
#   result_hash={}
#   num.times do
#     x = bishop_and_pawn(random_chess_board_square, random_chess_board_square)
#     result_hash[x] ? result_hash[x] += 1 : result_hash[x] = 1
#   end
#   print result_hash
# end

test_many(1)

# bishop_and_pawn("a1", "c3")

# For bishop = "a1" and pawn = "c3", the output should be bishopAndPawn(bishop, pawn) = true.