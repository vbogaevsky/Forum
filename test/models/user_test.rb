require 'test_helper'

class UserTest < ActiveSupport::TestCase
  fixtures :users
  
  test "user is not valid without a unique handle" do
    user = User.new(
      handle: users(:custodian).handle,
      email: "vbvb@vbb.com",
      avatar: "av.jpg", 
      moderator: false,
      admin: false)
    assert user.invalid?
    assert_equal ["has already been taken"], user.errors[:handle]
  end
  test "neither user handle nor email should be empty" do
    user = User.new(
      email: "vb@vb.bv",
      avatar: "av.jpg",
      moderator: false,
      admin: false)
    assert user.invalid?
    user = User.new(
      handle: "josh",
      avatar: "av.jpg",
      moderator: false,
      admin: false)
    assert user.invalid?
  end
  test "user is not valid without a unique email" do
    user = User.new(
      handle: "jason",
      email: users(:custodian).email,
      avatar: "av.jpg",
      moderator: false,
      admin: false)
    assert user.invalid?
    assert_equal ["has already been taken"], user.errors[:email]
  end
  test "cannot be admin and moderator semultanrously" do
    
  end
end
