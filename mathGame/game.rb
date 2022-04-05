#game class
  #runs all base logic for the game
  #presents questions to each player
  #checks which players turn it is
  #checks if player lost all life
  #presents method for displaying information at the end

require_relative 'player'
require_relative 'question'

class Game

  @player1
  @player2

  def initialize()
    @player1 = Player.new("Jerry")
    @player2 = Player.new("Dex")
    @currentPlayer = @player1
  end

  def getQuestion
    return Question.new(@currentPlayer)
  end

  def mainLoop()
    while @player1.lives != 0 && @player2.lives != 0
      puts "player1.lives #{@player1.lives}"
      puts "player2.lives #{@player2.lives}"
      currentQuestion = getQuestion
      currentQuestion.makeQuestion()
      currentQuestion.checkMyAnswer()
      @currentPlayer = @currentPlayer == @player1 ? @player2 : @player1
    end

    if @player1.lives == 0 
      puts "Player 2 wins with a score of #{@player2.lives}/3"
    else 
      puts "Player 1 wins with a score of #{@player1.lives}/3"
    end


  end

end
