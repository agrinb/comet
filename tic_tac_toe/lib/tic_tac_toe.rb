require 'pry'
require 'pry-debugger'


def winner?(board)
#not DRY, may return to resolve, but probably won't
  if horizontal(board) || diagonal(board)
    return true
  else
    false
  end

  board = board.transpose

  if horizontal(board) || diagonal(board)
    return true
  else
    false
  end
end

def horizontal(board)
  board.each do |row|
    unless not_empty?(row)
      return false
    end

    if (row[0] == row[1] && row[0] == row[2])
      return true
    else
      false
    end
  binding.pry
  end
end

def diagonal(board)
  if board[0][0] == board [1][1] && board[0][0] == board[2][2]
    return true
  elsif
    board[0][2] == board [1][1] && board[0][2] == board[2][0]
    return true
  else
    false
  end
end

def not_empty?(row)
  row.each do |space|
    if space == " "
      return false
    end
  end
end



