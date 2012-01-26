class UsersController < ApplicationController
	# GET /tags/1
  # GET /tags/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
      format.json { render json: @profile_picture }
    end
  end

  def index
  	@users = User.all
  end

  def edit
    @profile_picture = User.find(params[:id])
  end 

  def update
    @profile_picture = User.find(params[:id])

    respond_to do |format|
      if @profile_picture.update_attributes(params[:profile_picture])
        format.html { redirect_to @profile_picture, notice: 'Profile picture was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile_picture.errors, status: :unprocessable_entity }
      end
    end
  end
end