class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :user
	validates_presence_of :content, :user_id, :post_id
  	attr_accessible :content, :post_id, :user_id
end
