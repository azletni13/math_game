class Game
  attr_accessor :player1, :player2

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
  end

  def turns
    new_question = Question.new
    new_question.question
  end

  def player_lives(player)
    player1 = Player.new
    player1.lives
  end

  def method_name

  end

end