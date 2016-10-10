require './game'
require './player'
require './question'

class Start
  mathGame = Game.new("amna", "ben")



  new_question = Question.new

  puts new_question.question
  answer = gets.chomp.to_i

  if answer === new_question.answer
    puts "youre right!"
  else
    puts "youre wrong!"
  end



end







