class Recipe < ActiveRecord::Base
	acts_as :post
	has_many :ingredients
 	has_many :items, :through => :ingredients
 	has_many :comments
 	accepts_nested_attributes_for :ingredients

 	validates :name, :presence => true
 	validates :instructions, :presence => :true
 	validates :preperation_time, :presence => :true
 	validates :preperation_time, :numericality => { :only_integer => true }

 	include Tire::Model::Search
	include Tire::Model::Callbacks

	def self.search(params)
	  tire.search(load: true) do
	    query { string params[:query], default_operator: "AND" } if params[:query].present?
	  end
	end
end
