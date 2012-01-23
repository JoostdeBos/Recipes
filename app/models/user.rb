class User < ActiveRecord::Base
	has_many :comments

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
