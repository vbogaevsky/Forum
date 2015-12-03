require 'rails_helper'

describe BoardsController do
  describe "get #index" do
    it "populates an array of boards" do
      board = FactoryGirl.create(:board)
      get :index, id: board
      expect(assigns(:board)).to eq board
    end
  end
end
