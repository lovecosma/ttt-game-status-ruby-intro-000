# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
WIN_COMBINATIONS = [
  top_row_win = [0,1,2],
  mid_row_win = [3,4,5],
  bot_row_win = [6,7,8],
  fir_row_win = [0,3,6],
  sec_row_win = [1,4,7],
  thir_row_win = [2,5,8],
  diag_one_win = [0,4,8],
  diag_two_win = [2,4,6],
]

def won? (board)
  WIN_COMBINATIONS.select do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_index_1, win_index_2, win_index_3
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_index_1, win_index_2, win_index_3
  elsif (position_1 !== "X" && position_2 !== "X" && position_3 !== "X") || (position_1 !== "O" && position_2 !== "O" && position_3 !== "O")
    return false 
  end
end
end

# def full? (board)
# i = 0
# board.all? do |value|
# position_taken?(board)
# i+=1
# end
# end
