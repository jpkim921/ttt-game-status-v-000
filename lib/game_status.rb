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

board.all?{|ele| ele == " " } == true

  WIN_COMBINATIONS.each do |win_combo|
    position1 = board[win_combo[0]]
    position2 = board[win_combo[1]]
    position3 = board[win_combo[2]]


    if [position1, position2, position3] == ["X","X","X"] || [position1, position2, position3] == ["O","O","O"]
      return win_combo
    else
      return false
  end

end
