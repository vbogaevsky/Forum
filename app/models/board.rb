class Board < ActiveRecord::Base
  has_many :topicks
  attr_accessor :board_name
  attr_accessor :topick_id
  attr_accessor :topicks
  attr_accessor :posts
  attr_accessor :last_poster
end