class Board < ActiveRecord::Base
  has_many :topicks
  has_many :posts
  validates :name, presence: true, uniqueness: true
  validates :topick_id, uniqueness: true, allow_blank: true
end