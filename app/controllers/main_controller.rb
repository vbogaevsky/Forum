class MainController < ApplicationController
  def index
  	@boards = Board.all
  end
end
