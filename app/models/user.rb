class User < ActiveRecord::Base
    attr_accessible :user_id, :picture
	mount_uploader :picture, ImageUploader
	has_many :friendships  
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
	has_many :inverse_friends, :through => :inverse_friendships, :source => :user
	has_many :comments

	# Loads a default image for the user if none has been set. Use this method instead of picture_url
	# def image_url
	 #	self.picture.nil? ? 'image-unknown.jpg' : self.picture
	# end

	def self.from_omniauth(auth)
		find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
	end

	def self.create_with_omniauth(auth)
	  create! do |user|
	    user.provider = auth["provider"]
		user.uid = auth["uid"]
		user.name = auth["info"]["name"]
		user.picture = auth["info"]["image"]
	  end
	end

	searchable do 
 		text :name
 	end
end
