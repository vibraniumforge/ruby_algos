require "pry"
def pascal(row_num)
  array_of_rows = []
  array_of_rows << [1]
  # start it off with 1 in the first row
  (1..row_num).each do |row|
    previous_row = array_of_rows[row-1]
    array_of_rows << compute_a_row(previous_row)
  end
  # p array_of_rows.last.join(", ")
  print array_of_rows
end

def compute_a_row(previous_row)
 new_row = []
 new_row_length = previous_row.length + 1
 (0...new_row_length).each do |index|
  # binding.pry
  if index == 0 || index == new_row_length - 1
    new_row << 1
    # if the index is 0, ouput a 1. If it is the farthest right, ouput a 1. Remember arrays are zero-indexed.
  else
    new_row << previous_row[index-1] + previous_row[index]
    # else add the index at the value above and the value behind it.
  end
 end
 new_row
end

def test_up_to(num)
  num.times do |number|
     puts pascal(number)
  end
end

# pascal(2)
test_up_to(5)