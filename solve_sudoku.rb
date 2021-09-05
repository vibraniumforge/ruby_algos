def solve_sudoku(board)
  row, col = find_next_empty(board)
  return true if !row
  for guess in 1...10
    if is_valid?(board, guess.to_s, row, col)
      board[row][col] = guess.to_s
      p board if solve_sudoku(board)
    end
    board[row][col] = "."
  end
  false
end

def is_valid?(board, guess, row, col)
  # check the current row
  return false if board[row].include?(guess)

  # check the current column
  for row_index in 0...9
    return false if board[row_index][col] == guess
  end

  # check the current 3x3 box
  row_start = (row / 3) * 3
  col_start = (col / 3) * 3
  for box_row in row_start...row_start + 3
    for box_col in col_start...col_start + 3
      return false if board[box_row][box_col] == guess
    end
  end
  true
end

def find_next_empty(board)
  for row in 0...9
    for col in 0...9
      if board[row][col] == "."
        return row, col
      end
    end
  end
  false
end

p solve_sudoku(
  [
    ["5", "3", ".", ".", "7", ".", ".", ".", "."],
    ["6", ".", ".", "1", "9", "5", ".", ".", "."],
    [".", "9", "8", ".", ".", ".", ".", "6", "."],
    ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
    ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
    ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
    [".", "6", ".", ".", ".", ".", "2", "8", "."],
    [".", ".", ".", "4", "1", "9", ".", ".", "5"],
    [".", ".", ".", ".", "8", ".", ".", "7", "9"],
  ]
)
