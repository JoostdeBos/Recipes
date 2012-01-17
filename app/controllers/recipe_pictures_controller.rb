class RecipePicturesController < ApplicationController
  # GET /recipe_pictures
  # GET /recipe_pictures.json
  def index
    @recipe_pictures = RecipePicture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipe_pictures }
    end
  end

  # GET /recipe_pictures/1
  # GET /recipe_pictures/1.json
  def show
    @recipe_picture = RecipePicture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe_picture }
    end
  end

  # GET /recipe_pictures/new
  # GET /recipe_pictures/new.json
  def new
    @recipe_picture = RecipePicture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe_picture }
    end
  end

  # GET /recipe_pictures/1/edit
  def edit
    @recipe_picture = RecipePicture.find(params[:id])
  end

  # POST /recipe_pictures
  # POST /recipe_pictures.json
  def create
    @recipe_picture = RecipePicture.new(params[:recipe_picture])

    respond_to do |format|
      if @recipe_picture.save
        format.html { redirect_to @recipe_picture, notice: 'Recipe picture was successfully created.' }
        format.json { render json: @recipe_picture, status: :created, location: @recipe_picture }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_pictures/1
  # PUT /recipe_pictures/1.json
  def update
    @recipe_picture = RecipePicture.find(params[:id])

    respond_to do |format|
      if @recipe_picture.update_attributes(params[:recipe_picture])
        format.html { redirect_to @recipe_picture, notice: 'Recipe picture was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_pictures/1
  # DELETE /recipe_pictures/1.json
  def destroy
    @recipe_picture = RecipePicture.find(params[:id])
    @recipe_picture.destroy

    respond_to do |format|
      format.html { redirect_to recipe_pictures_url }
      format.json { head :ok }
    end
  end
end
