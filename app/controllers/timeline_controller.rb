class TimelineController < ApplicationController
	# GET /tags
  # GET /tags.json
  def index
  	@comments = Comment.order('created_at desc')
		@recipes = Recipe.order('created_at desc')
		@cookbooks = Cookbook.order('created_at desc')
		@timeline = (@comments + @recipes + @cookbooks).sort_by(&:created_at)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timeline }
    end
  end
end