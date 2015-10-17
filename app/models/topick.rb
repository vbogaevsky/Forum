class Topick < ActiveRecord::Base
	has_many :posts
	belongs_to :user
	belongs_to :board
end
