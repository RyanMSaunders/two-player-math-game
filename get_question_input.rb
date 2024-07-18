

module QuestionInputHandler
  def question_input(opponent, current_player)
    p "Game Host: #{opponent}, please input the first number:"
    num1 = gets.chomp
    p "Game Host: #{opponent}, please input the second number:"
    num2 = gets.chomp

    p "#{current_player}: What is #{num1} plus #{num2}?"

    [num1, num2]
  end
end

# class QuestionInput
#   include QuestionInputHandler
# end

# # Create an instance of the class and call the method
# qi = QuestionInput.new
# qi.question_input