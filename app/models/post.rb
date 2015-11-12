class Post < ActiveRecord::Base
	belongs_to :user, counter_cache: true
	belongs_to :topick, counter_cache: true
  belongs_to :board, counter_cache: true
  validates :message, presence: true
  validates :user_id, presence: true
  validates :topick_id, presence: true
	validates :board_id, presence: true
end
