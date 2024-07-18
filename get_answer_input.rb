
module AnswerInputHandler

  def answer_input(current_player, opponent, num1, num2)
    answer = gets.chomp.to_i
    p  "#{current_player.name} entered their answer: #{answer}"

    is_correct = false

    if answer == num1.to_i + num2.to_i
      p "#{current_player.name}: YES! You are correct"
      is_correct = true
    else
      p "#{current_player.name}: Seriously? No!"
    end


    is_correct    

  end
end
