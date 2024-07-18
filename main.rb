
require_relative "get_question_input"
require_relative "get_answer_input"
require_relative "game_host"
require_relative "player"



player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
# Create an instance of the class and call the method
#Assigning Players to their roles - current_player/opponent
game_host = GameHost.new(player1, player2)


puts "Starting with #{game_host.current_player.name}"

##### LOOP THIS ... while player1/player2 score != 0
#Opponent asking question
is_winner = false

while is_winner == false do
  num1, num2 = game_host.question_input(game_host.opponent.name, game_host.current_player.name)

  #Current player answering question
  is_correct = game_host.answer_input(game_host.current_player, game_host.opponent, num1, num2)
  # p is_correct

  is_winner = game_host.update_score(game_host.current_player, is_correct)

  if is_winner
    game_host.game_over(player1, player2)
  else
    game_host.show_score(player1, player2)
    #Switching Players
    game_host.switch_players
    puts "#{game_host.current_player.name}, it's your turn to answer now"
  end

end
### LOOP ENDS

### GAME OVER



# current player role is assigned to Player 1
# opponent role is assigned to Player 2
# Game host asks current_player to choose two numbers. 
# "Player 1 inputs 2 numbers, 
# GameHost generates a message that P1 included those numbers in a math equation"
# Player 2 is prompted to enter an answer.
# "A response is generated from P1 based on P2's answer. 
# The score is shown. If answer is correct, no change in score, if answer is wrong, the player who asked the question has their score reduced by 1"
# If no player has won, a New Turn is generated, generating a NEW TURN message and prompting the OPPOSITE player to enter 2 numbers
# When a player reaches a score of 1, a prompt is generated: {player} wins with a score of 1/3. A GAME OVER prompt is generated, a Goodbye! prompt is generated