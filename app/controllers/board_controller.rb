class BoardController < ApplicationController
  def index
    @boards = Board.all
    @users = User.all
  end
  def newBoard
    board = Board.create name, topick_id
    @boards << board
  end
end
