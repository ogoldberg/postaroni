class Post < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :title, use: [:slugged, :history]
	has_many :comments, :dependent => :destroy
	belongs_to :user

	attr_accessible :content, :title, :user_id
end
