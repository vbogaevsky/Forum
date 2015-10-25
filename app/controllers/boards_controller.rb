class BoardsController < ApplicationController
  def index
    @boards = Board.all
    @users = User.all
  end
  def show
    @board = Board.find(params[:id])
    @topics = @board.topics
  end
  def newBoard
    board = Board.create name, topick_id
    @boards << board
  end
end
