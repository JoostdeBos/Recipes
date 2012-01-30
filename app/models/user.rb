class User < ActiveRecord::Base
  attr_accessible :user_id, :name, :picture
	mount_uploader :picture, ImageUploader
	has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
	has_many :inverse_friends, :through => :inverse_friendships, :source => :user
	has_many :comments

	# Loads a default image for the user if none has been set. Use this method instead of picture_url
	def image_url
		# Somehow the picture field returns false for 'nil?' regardless of wether it's set or not
		# So we'll have to check if the size of the url is 0 to see if it exists
		# There should be a better way to do this, probably?
		if self.picture.size == 0
	 		self.profile_picture.nil? ? 'image-unknown.jpg' : self.profile_picture
	 	else
	 		self.picture
	 	end
	end

	# Check if the user already has an account with this provider, if not, create one
	def self.from_omniauth(auth)
		find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
	end

	def self.create_with_omniauth(auth)
	  create! do |user|
	    user.provider = auth["provider"]
			user.uid = auth["uid"]
			user.name = auth["info"]["name"]
			user.profile_picture = auth["info"]["image"]
	  end
	end

	searchable do 
 		text :name
 	end
end
