board = ["X", "X", "X", "X", "X", "X", "X", "X", "X"]
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

i = 0
if board.all? do |value|
position_taken?(board, i)
i+=1
end
elsif board.all? do |value|
position_taken?(board, i)
i+=1
end

f = board.all? do |value|
position_taken?(board, i)
i+=1
end

puts f
