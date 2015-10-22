class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================
    possible_moves = ["rock", "paper", "scissors"]

    @computer_move = possible_moves.sample

    if @user_move == @computer_move
        @result "It's a tie!"
    elsif @user_move == "rock" && @computer_move == "scissors"
        @result "You win!"
    elsif @user_move == "rock" && @computer_move == "paper"
     puts "You lose!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      puts "You lose!"
    elsif @user_move == "paper" && @computer_move == "rock"
     puts "You win!"
    elsif @user_move == "scissors" && @computer_move == "paper"
     puts "You win!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      puts "You lose!"
    end

    @result = "Replace this string with the correct value."

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
