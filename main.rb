require './game'
require './player'
require './question'

class Start
  mathGame = Game.new("amna", "ben")

  currentPlayer = mathGame.player1

  while mathGame.player1.lives > 0 && mathGame.player2.lives > 0
    puts "#{currentPlayer.name}'s turn"

    new_question = Question.new

    puts "#{currentPlayer.name}: #{new_question.question}"
    answer = gets.chomp.to_i

    if answer === new_question.answer
      puts "youre right!"
    else
      currentPlayer.incorrect
      puts "youre wrong! You now have #{currentPlayer.lives} lives left !"
    end

    if currentPlayer === mathGame.player1
      currentPlayer = mathGame.player2
    elsif currentPlayer === mathGame.player2
      currentPlayer = mathGame.player1
    end
  end
  if mathGame.player1.lives > 0
    puts "game over. #{mathGame.player1.name} WINS with a score of #{mathGame.player1.lives}!"
  elsif mathGame.player2.lives > 0
    puts "game over. #{mathGame.player2.name} WINS with a score of #{mathGame.player2.lives}!"
  end
end







