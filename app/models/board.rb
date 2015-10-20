class Board < ActiveRecord::Base
  has_many :topicks
  attr_reader :board_name
  attr_writer :board_name
  attr_accessor :topick_id
  attr_accessor :topicks
  attr_accessor :posts
  attr_accessor :last_poster

  def create (name, topickId)
    board = Board.new
    board.board_name = name
    board.topick_id = topickId
  end
end