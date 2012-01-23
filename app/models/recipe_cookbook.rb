class RecipeCookbook < ActiveRecord::Base
	belongs_to :cookbooks, :recipes
end
