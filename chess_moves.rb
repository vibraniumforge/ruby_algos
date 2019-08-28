require "pry"

def convert_chess_notation_to_ar(str)
  str_ar=str.split("")
  ar=[]
  sq_1_final = str_ar[0].ord-97
  sq_2_final = str_ar[1].to_i-1
  ar << [sq_1_final, sq_2_final]
end

def convert_ar_to_chess_notation(ar)
  first_coord = (ar[0]+97).chr
  second_coord = ar[1]+1
  puts first_coord.chr
  puts second_coord
  result="#{first_coord}#{second_coord}"
end

def chess(str)
  str_ar = str.gsub(/\n/,"").split("\n")
  row = str_ar.detect{|square| square.include?('K')}
  k_position = [row.index('K'), str_ar.index(row)]
  possible_K_moves = []
  (k_position[0]-1).upto(k_position[0]+1) do |i|
    (k_position[1]-1).upto(k_position[1]+1) do |j|
      if i.between?(0,7) && j.between?(0,7) && [i, j] != k_position
        possible_K_moves << [i, j]
      end
    end
  end
  print "possible_K_moves= #{possible_K_moves}"
  print ""
  print "\n"
  print "possible_r_moves= #{rook_moves(str)}"
  print "possible_b_moves= #{bishop_moves(str)}"
  print "possible_q_moves= #{queen_moves(str)}"
  print "possible_n_moves= #{knight_moves(str)}"

  # p rook_moves(str)
  # p bishop_moves(str)
  # p queen_moves(str)
  # p knight_moves(str)
end

def rook_moves(str)
  str_ar = str.gsub(/\n/,"").split("\n")
  row = str_ar.detect{|square| square.include?('r')}
  rook_position = [row.index('r'),str_ar.index(row)]
  possible_rook_moves = []
  0.upto(7) do |i|
    if i != rook_position[0]
      possible_rook_moves << [i, rook_position[1]]
    end
  end
  0.upto(7) do |j|
    if j != rook_position[1]
      possible_rook_moves << [rook_position[0], j]
    end
  end
  # print "possible_rook_moves= #{possible_rook_moves}"
  print "\n"
  possible_rook_moves
end

def bishop_moves(str)
  str_ar = str.gsub(/\n/,"").split("\n")
  row = str_ar.detect{|square| square.include?('b')}
  bishop_position = [row.index('r'),str_ar.index(row)]
  possible_bishop_moves = []
	i = bishop_position[0]
  j = bishop_position[1]
		# up and right
	while i.between?(0,7) && j.between?(0,7) 
		possible_bishop_moves << [i, j] if [i, j] != bishop_position
		i+=1
		j+=1
	end
	# down and right
	i = bishop_position[0]
  j = bishop_position[1]
	while i.between?(0,7) && j.between?(0,7) 
		possible_bishop_moves << [i, j] if [i, j] != bishop_position
		i+=1
		j-=1
	end
		# up and left
	i = bishop_position[0]
	j = bishop_position[1]
	while i.between?(0,7) && j.between?(0,7) 
		possible_bishop_moves << [i, j] if [i, j] != bishop_position
		i-=1
		j+=1
	end
		# down and left
	i = bishop_position[0]
	j = bishop_position[1]
	while i.between?(0,7) && j.between?(0,7) 
		possible_bishop_moves << [i, j] if [i, j] != bishop_position
		i-=1
		j-=1
  end	
  # print "possible_bishop_moves= #{possible_bishop_moves}"
  print "\n"
  possible_bishop_moves
end

def queen_moves(str)
  possible_queen_moves =[]
  possible_queen_moves << rook_moves(str) 
  possible_queen_moves << bishop_moves(str)
  # print "possible_queen_moves= #{possible_queen_moves}"
  binding.pry
  possible_queen_moves
end

def knight_moves(str)
  str_ar = str.gsub(/\n/,"").split("\n")
  row = str_ar.detect{|square| square.include?('r')}
  ar = [row.index('n'),str_ar.index(row)]
  possible_knight_moves =[]
  possible_knight_moves << [ar[0]+1, ar[1]+2] if (ar[0]+1).between?(0,7) && (ar[1]+2).between?(0,7)
  possible_knight_moves << [ar[0]+2, ar[1]+1] if (ar[0]+2).between?(0,7) && (ar[1]+1).between?(0,7)
  possible_knight_moves << [ar[0]+2, ar[1]-1] if (ar[0]+2).between?(0,7) && (ar[1]-1).between?(0,7)
  possible_knight_moves << [ar[0]+1, ar[1]-2] if (ar[0]+1).between?(0,7) && (ar[1]-2).between?(0,7)
  possible_knight_moves << [ar[0]-1, ar[1]-2] if (ar[0]-1).between?(0,7) && (ar[1]-2).between?(0,7)
  possible_knight_moves << [ar[0]-2, ar[1]-1] if (ar[0]-2).between?(0,7) && (ar[1]-1).between?(0,7)
  possible_knight_moves << [ar[0]-2, ar[1]+1] if (ar[0]-2).between?(0,7) && (ar[1]+1).between?(0,7)
  possible_knight_moves << [ar[0]-1, ar[1]+2] if( ar[0]-1).between?(0,7) && (ar[1]+2).between?(0,7)
  # p possible_knight_moves
  x = possible_knight_moves.map do |km|
    convert_ar_to_chess_notation(km)
  end
  p x
end

# knight_moves("a8")
# => ["e6", "f5", "f3", "e2", "c2", "b3", "b5", "c6"]

# [horizontal, vertical]



chess("K.r.....\n
........\n
r.......\n
..n.....\n
........\n
........\n
........\n
b....k..")



