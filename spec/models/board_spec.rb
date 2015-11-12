require 'rails_helper'

describe Board do
  it "is valid with a name" do
    board = Board.new(name: 'Something')
    expect(board).to be_valid
  end

  it "is invalid without a name" do
    board = Board.new
    expect(board).to be_invalid
  end
end
