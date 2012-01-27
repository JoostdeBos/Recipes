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

  def edit
    @user = User.find(params[:id])
  end 

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'Profile picture was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end