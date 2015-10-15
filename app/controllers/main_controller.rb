class MainController < ApplicationController
  def index
  	@boards = Board.all
  end
  def newBoard
  	board = Board.create(params.require(:something).permit(:status))
  	@boards << board
  end
end
