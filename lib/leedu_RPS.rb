require "leedu_RPS/version"

module LeeduRPS
  class RPS
    def one_player
      player1 = Player.new
      player2 = Player.new
      winner = CheckWinner.new

      player1_choice = player1.input("Player")
      player2_choice = player2.computer

      winner.check(player1_choice, player2_choice)
    end

    def two_player
      player1 = Player.new
      player2 = Player.new
      winner = CheckWinner.new

      player1_choice = player1.input("Player 1")
      player2_choice = player2.input("Player 2")

      winner.check(player1_choice, player2_choice)
    end

    def init_game
      puts "Welcome to Rock Paper Scissor by Dustin Lee"
      puts "Select an option:"
      puts "(1) Play against a computer"
      puts "(2) Play against another player"
      puts "(q) To quit"

      input = gets.chomp
      until ["1", "2", "q"].include?(input)
        puts "Please enter a valid option."
        input = gets.chomp
      end

      one_player if input == "1"
      two_player if input == "2"
      exit if input == "q"
    end

  end

  class Player
    attr_writer :choice

    def input(player)
      puts "#{player} please choose:"
      puts "(1) Rock"
      puts "(2) Paper"
      puts "(3) Scissor"
      puts "(q) Quit"

      @choice = gets.chomp
      until ["1", "2", "3", "q"].include?(@choice)
        puts "Please input a valid option."
        @choice = gets.chomp
      end

      exit if @choice == "q"
      puts "#{player} has chosen Rock" if @choice == "1"
      puts "#{player} has chosen Paper" if @choice == "2"
      puts "#{player} has chosen Scissor" if @choice == "3"

      @choice.to_i
    end

    def computer
      @choice = rand(1..3)

      puts "The Computer has chosen Rock" if input == "1"
      puts "The Computer has chosen Paper" if input == "2"
      puts "The Computer has chosen Scissor" if input == "3"

      @choice.to_i
    end

  end

  class CheckWinner
    attr_writer :result

    def init
      @result = 0
    end

    def check(p1_choice, p2_choice)
      @result = p1_choice * p2_choice

      puts "It's a draw!" if [1, 4, 9].include?(@result)
      puts "Paper beats Rock, Paper wins!" if @result == 2
      puts "Rock beats Scissor, Rock wins!" if @result == 3
      puts "Scissor beats Paper, Scissor wins!" if @result == 6
      @result

    end

  end

end
