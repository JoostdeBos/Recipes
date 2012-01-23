class TimelineController < ApplicationController
	# GET /tags
  # GET /tags.json
  def index
  	# Collect user-connected comments into the timeline
    #@timeline = Comment.where('user_id IS NOT NULL').to_a

    # Get corresponding users
    #@timeline = getUserForPost @timeline

  	#for user in User.all do
		# 	@timeline = user.comments
		# end

		@comments = Comment.order('created_at desc')
		@recipes = Recipe.order('created_at desc')
		@cookbooks = Cookbook.order('created_at desc')
		@timeline = (@comments + @recipes + @cookbooks).sort_by(&:created_at)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timeline }
    end
  end

  # Foreach post passed in an array,
  # get the corresponding user and
  # return them in an array
  def getUserForPost timeline
  	user_ids = Array.new
  	timeline.each do |post|
  		user_ids.push post.user_id
  	end

  	User.find(user_ids).each do |user|
  		timeline.each do |post|
  			if post.user_id == user.id
  				
  			end
  		end
  	end
  	
  	timeline
  end
end