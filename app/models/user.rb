class User < ActiveRecord::Base
	has_many :comments

	# Loads a default image for the user if none has been set. Use this method instead of picture_url
	def image_url
		self.picture_url.nil? ? 'image-unknown.jpg' : self.picture_url
	end

	def self.from_omniauth(auth)
		find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
	end

	def self.create_with_omniauth(auth)
	  create! do |user|
	    user.provider = auth["provider"]
		user.uid = auth["uid"]
		user.name = auth["info"]["name"]
		user.picture_url = auth["info"]["image"]
	  end
	end
end
