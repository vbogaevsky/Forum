class User < ActiveRecord::Base
  has_secure_password
  has_many :topicks
  has_many :posts
  validates :handle, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, with: /@/
end
