class Question
  attr_accessor :question
  def initialize
    @num1 = rand(19) + 1
    @num2 = rand(19) + 1
    @question = ["What is #{@num1} + #{@num2}?", (@num1 + @num2)]
  end

  def enter_answer
    puts @question[0]
    print "> "
    answer = $stdin.gets.chomp
    if (answer.to_i === @question[1])
      puts "Correct!"
      return true
    else
      system('say "Wrong"')
      puts "BZZT WRONG"
      return false
    end
  end
end
