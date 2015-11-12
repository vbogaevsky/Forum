require 'rails_helper'

describe Post do
  it "is valid with a message" do
    post = Post.new(message: "Some txt",
      user_id: 1,
      topick_id: 1,
      board_id: 1)
    expect(post).to be_valid
  end

  it "is invalid without a message" do
    post = Post.new(user_id: 1, topick_id: 1, board_id: 1)
    expect(post).to be_invalid
  end

  it "is valid with a user_id" do
    post = Post.new(message: "Some txt",
      user_id: 1,
      topick_id: 1,
      board_id: 1)
    expect(post).to be_valid
  end

  it "is invalid without a user_id" do
    post = Post.new(message: "Some txt",
      topick_id: 1,
      board_id: 1)
    expect(post).to be_invalid
  end

  it "is valid with a topick_id" do
    post = Post.new(message: "Some txt",
      user_id: 1,
      topick_id: 1,
      board_id: 1)
    expect(post).to be_valid
  end

  it "is invalid without a topick_id" do
    post = Post.new(message: "Some txt",
      user_id: 1,
      board_id: 1)
    expect(post).to be_invalid
  end

  it "is valid with a board_id" do
    post = Post.new(message: "Some txt",
      user_id: 1,
      topick_id: 1,
      board_id: 1)
    expect(post).to be_valid
  end

  it "is invalid without a board_id" do
    post = Post.new(message: "Some txt",
      user_id: 1,
      topick_id: 1)
    expect(post).to be_invalid
  end
end
