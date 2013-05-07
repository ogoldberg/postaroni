class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :user

	attr_accessible :content, :title, :user_id
end
