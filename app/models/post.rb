class Post < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :title, use: [:slugged, :history]
	has_many :comments, :dependent => :destroy
	belongs_to :user
	validates_presence_of :content, :user_id, :title

	attr_accessible :content, :title, :user_id
end
