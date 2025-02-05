# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [6,4,2],
  [0,3,6],
  [1,4,7],
  [2,5,8],
] 
  
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    
    position_1 = board[win_combination[0]]
    position_2 = board[win_combination[1]]
    position_3 = board[win_combination[2]]
    
    if (position_1 == "X" && position_2 == "X" && position_3 == "X")
      return win_combination
    elsif (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win_combination
    else
      FALSE
    end
    FALSE
  end
  FALSE
end

def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end

def draw?(board)
full?(board) && won?(board) == FALSE
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
    if win_array = won?(board)
    return board[win_array[0]]
  end
end