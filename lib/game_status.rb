# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]


def won?(board)

# return nil if board.all?{|ele| ele == " " } == true

  WIN_COMBINATIONS.each do |win_combo|
      position1 = board[win_combo[0]]
      position2 = board[win_combo[1]]
      position3 = board[win_combo[2]]
      comparison_set = [position1, position2, position3]

      if comparison_set == ["X","X","X"] || comparison_set == ["O","O","O"]
          return win_combo
      else
        next
      end
    end
  false
end


def full?(board)
board.all?{|ch| ch == "X" || ch == "O" }
end


def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  elsif won?(board) == false && full?(board) == false
    return false
  elsif won?(board) == true
    return false
  end
end


def over?(board)

# if draw?(board)
#   return true
# elsif won?(board) || full?(board)
#   return true
# end

if won?(board) || full?(board)
  return true
end

# if won?(board) == true || full?(board) == false
# return true
# elsif draw?(board)
#   return true
# end

false
end



def winner(board)
  if over?(board) == true
    winning_combo = won?(board)
    return winning_combo[0]
  end

end
