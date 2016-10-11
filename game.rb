module TwoPlayerGame
  class Game
    attr_accessor :player1, :player2

    def initialize(name1, name2)
      @player1 = Player.new(name1)
      @player2 = Player.new(name2)
      @current_player = @player1
    end

    def question_answer_check
     new_question = Question.new
      puts "#{@current_player.name}: #{new_question.question}"
      answer = gets.chomp.to_i
      if answer == new_question.answer
        puts "youre right!"
      else
        @current_player.decrease_life
        puts "youre wrong! You now have #{@current_player.lives} lives left !"
      end
    end

    def switch_player
      if @current_player == @player1
        @current_player = @player2
      elsif @current_player == @player2
        @current_player = @player1
      end
    end

    def end_result
      if @player1.lives > 0
        puts "game over. #{@player1.name} WINS with a score of #{@player1.lives}!"
      elsif @player2.lives > 0
        puts "game over. #{@player2.name} WINS with a score of #{@player2.lives}!"
      end
    end

    def start_game
      while @player1.lives > 0 && @player2.lives > 0
        puts "#{@current_player.name}'s turn"
        question_answer_check
        switch_player
      end
      end_result
    end
  end
end
