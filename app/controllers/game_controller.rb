class GameController < ApplicationController

  def rock

    @user_move = "rock"

    possible_moves = ["rock", "paper", "scissors"]

    @computer_move = possible_moves.sample

    if @user_move == @computer_move
        @result = "You tied!"
        @label_color = "warning"
    elsif @user_move == "rock" && @computer_move == "scissors"
        @result = "You won!"
        @label_color = "success"
    elsif @user_move == "rock" && @computer_move == "paper"
        @result = "You lost!"
        @label_color = "danger"
    end

    render "rock.html.erb"
  end

  def paper

    @user_move = "paper"

    possible_moves = ["rock", "paper", "scissors"]

    @computer_move = possible_moves.sample

    if @user_move == @computer_move
        @result = "You tied!"
        @label_color = "warning"
    elsif @user_move == "paper" && @computer_move == "rock"
        @result = "You won!"
        @label_color = "success"
    elsif @user_move == "paper" && @computer_move == "scissors"
        @result = "You lost!"
        @label_color = "danger"
    end

   render "paper.html.erb"
  end

  def scissors

    @user_move = "scissors"

    possible_moves = ["rock", "paper", "scissors"]

    @computer_move = possible_moves.sample

    if @user_move == @computer_move
        @result = "You tied!"
        @label_color = "warning"
    elsif @user_move == "scissors" && @computer_move == "paper"
        @result = "You won!"
        @label_color = "success"
    elsif @user_move == "scissors" && @computer_move == "rock"
        @result = "You lost!"
        @label_color = "danger"
    end

   render "scissors.html.erb"
  end
end
