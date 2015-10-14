class User < ActiveRecord::Base
  validates :handle, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  
end
