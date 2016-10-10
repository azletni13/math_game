class Game
  attr_accessor :player1, :player2

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
  end
end

