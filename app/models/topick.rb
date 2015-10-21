class Topick < ActiveRecord::Base
	has_many :posts
	belongs_to :user
	belongs_to :board, counter_cache: true
  validates :theme, presence: true
  validates :post_id, presence: true
  validates :user_id, presence: true
end
