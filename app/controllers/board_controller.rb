class BoardController < ApplicationController
  def index
    @boards = Board.all
  end
  def newBoard
    board = Board.create(name, topic_id)
    @boards << board
  end
end
