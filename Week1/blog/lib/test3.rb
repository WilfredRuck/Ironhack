def position_taken?(board, num)
  if ((board[num] == " ") || (board[num] == "") || (board[num] == nil))
    return false
  else
    return true
  end
end