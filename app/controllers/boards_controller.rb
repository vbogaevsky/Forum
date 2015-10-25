class BoardsController < ApplicationController
  def index
    @boards = Board.all
    @users = User.all
  end
  def show
    @board = Board.find(params[:id])
    @topicks = @board.topicks.all
  end
  def newBoard
    board = Board.create name, topick_id
    @boards << board
  end
  def showTopick
    
  end
end
