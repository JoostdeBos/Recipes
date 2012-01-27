class UsersController < ApplicationController
	# GET /tags/1
  # GET /tags/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def index
  	@search = User.search do
      fulltext params[:search]
      paginate :page => params[:page], :per_page => 25
    end
    @users = @search.results
  end
end