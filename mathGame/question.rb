#question class
  #generate question
  #receive answer and check if right or wrong


class Question
  
  def initialize(player)
    @player = player
    @random1 = rand(1..20)
    @random2 = rand(1..20)
    @answer = @random1 + @random2
  end

  def input()
    return Integer gets.chomp
  end

  def makeQuestion()
    puts "Solve #{@random1} + #{@random2} ."
  end

  def checkMyAnswer()
    if @answer != input
      @player.lives -= 1
      puts "Wrong answer"
    else 
      puts "Correct answer"
    end
  end


end

