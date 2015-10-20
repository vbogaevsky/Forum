class Board < ActiveRecord::Base
  has_many :topicks
  validates :name, presence: true, uniqueness: true
  validates :topick_id, uniqueness: true
end