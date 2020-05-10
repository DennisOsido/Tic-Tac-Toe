# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/AbcSize
# rubocop:disable Layout/LineLength

def check_win(board)
  if (board[0] == board[1] && board[0] == board[2] && board[0] != ' ' && board[1] != ' ' && board[2] != ' ') || (board[3] == board[4] && board[3] == board[5] && board[3] != ' ' && board[4] != ' ' && board[5] != ' ') || (board[6] == board[7] && board[6] == board[8] && board[6] != ' ' && board[7] != ' ' && board[8] != ' ') || (board[0] == board[3] && board[0] == board[6] && board[0] != ' ' && board[3] != ' ' && board[6] != ' ') || (board[1] == board[4] && board[1] == board[7] && board[1] != ' ' && board[4] != ' ' && board[7] != ' ') || (board[2] == board[5] && board[2] == board[8] && board[2] != ' ' && board[5] != ' ' && board[8] != ' ') || (board[0] == board[4] && board[0] == board[8] && board[0] != ' ' && board[4] != ' ' && board[8] != ' ') || (board[2] == board[4] && board[2] == board[6] && board[2] != ' ' && board[4] != ' ' && board[6] != ' ')
    true
  else
    false
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/AbcSize
# rubocop:enable Layout/LineLength
