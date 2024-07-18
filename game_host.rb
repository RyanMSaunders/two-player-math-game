

class GameHost 

  attr_reader :current_player, :opponent

  include QuestionInputHandler
  include AnswerInputHandler
  

  def initialize(player1, player2)
    @current_player = player1
    @opponent = player2
  end

  def update_score(current_player, is_correct)
    #if current_player answer is correct, update score
    #if answer is wrong, the player who answered the question has their score reduced by 1
    # p "#{current_player.score} is current players score"
    if is_correct == false
      current_player.decrease_score
    end

    is_winner = false
    # p "#{current_player.score} this is current players score in update score method"
    if current_player.score == 0
      is_winner = true
    end

    is_winner

  end

  def show_score(player1, player2)
    p "#{player1.name}: #{player1.score}/3, #{player2.name}: #{player2.score}/3"
  end

  
  def switch_players
    @current_player, @opponent = @opponent, @current_player

    p "---NEW TURN---"
  end

  def game_over(player1, player2)
    #if player 1 score != 0 and player 2 score != 0
    if player1.score != 0
      p "#{player1.name} wins with a score of #{player1.score}/3"
      p "---GAME OVER---"
    else
      p "#{player2.name} wins with a score of #{player2.score}/3"
      p "---GAME OVER---"
      p "Goodbye!"
    end

  end

  

end
