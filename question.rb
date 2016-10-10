
class Question
  def initialize()
    @num1 = rand(1...21)
    @num2 = rand(1...21)
  end

  def question
    "what is #{@num1} + #{@num2}?"
  end

  def answer
    @num1 + @num2
  end
end