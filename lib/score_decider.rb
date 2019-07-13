class ScoreDecider
  attr_reader :player_1, :player_2

  def initialize(player_1_move, player_2_move)
    @player_1_move = player_1_move
    @player_2_move = player_2_move
  end

  def decider
    if @player_1_move == "Rock" && @player_2_move == "Rock"
      "Tie!"
    elsif @player_1_move == "Rock" && @player_2_move == "Scissors"
      "Rock beats scissors: Player 1 wins!"
    elsif @player_1_move == "Rock" && @player_2_move == "Paper"
      "Paper beats rock: Player 2 wins!"
    elsif @player_1_move == "Paper" && @player_2_move == "Rock"
      "Paper beats rock: Player 1 wins!"
    elsif @player_1_move == "Paper" && @player_2_move == "Scissors"
      "Scissors beats paper: Player 2 wins!"
    elsif @player_1_move == "Paper" && @player_2_move == "Paper"
      "Tie!"
    elsif @player_1_move == "Scissors" && @player_2_move == "Rock"
      "Rock beats scissors: Player 2 wins!"
    elsif @player_1_move == "Scissors" && @player_2_move == "Scissors"
      "Tie!"
    elsif @player_1_move == "Scissors" && @player_2_move == "Paper"
      "Scissors beats paper: Player 1 wins!"
    end
  end
end
