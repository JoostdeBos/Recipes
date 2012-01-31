class Identity < OmniAuth::Identity::Models::ActiveRecord
	attr_accessible :name, :email, :password
end