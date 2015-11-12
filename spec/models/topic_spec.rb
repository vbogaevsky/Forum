require "rails_helper"

describe Topick do
  it "is valid with a theme" do
    topick = Topick.new(theme: "It's a topick", post_id: 1, user_id: 1)
    expect(topick).to be_valid
  end

  it "is invalid without a theme" do
    topick = Topick.new(post_id: 1, user_id: 1)
    expect(topick).to be_invalid
  end

  it "is valid with a post_id" do
    topick = Topick.new(theme: "It's a topick", post_id: 1, user_id: 1)
    expect(topick).to be_valid
  end

  it "is invalid without a post_id" do
    topick = Topick.new(theme: "It's a topick", user_id: 1)
    expect(topick).to be_invalid
  end

  it "is valid with a user_id" do
    topick = Topick.new(theme: "It's a topick", post_id: 1, user_id: 1)
    expect(topick).to be_valid
  end

  it "is invalid without a user_id" do
    topick = Topick.new(theme: "It's a topick", post_id: 1)
    expect(topick).to be_invalid
  end
end
