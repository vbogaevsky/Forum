class TopicksController < ApplicationController
  def index
    @topick = Topick.find(params[:id])
    @posts = @topick.posts.all    
  end
  def show
  end
end
