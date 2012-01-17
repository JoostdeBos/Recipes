class RecipeCookbooksController < ApplicationController
  # GET /recipe_cookbooks
  # GET /recipe_cookbooks.json
  def index
    @recipe_cookbooks = RecipeCookbook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipe_cookbooks }
    end
  end

  # GET /recipe_cookbooks/1
  # GET /recipe_cookbooks/1.json
  def show
    @recipe_cookbook = RecipeCookbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe_cookbook }
    end
  end

  # GET /recipe_cookbooks/new
  # GET /recipe_cookbooks/new.json
  def new
    @recipe_cookbook = RecipeCookbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe_cookbook }
    end
  end

  # GET /recipe_cookbooks/1/edit
  def edit
    @recipe_cookbook = RecipeCookbook.find(params[:id])
  end

  # POST /recipe_cookbooks
  # POST /recipe_cookbooks.json
  def create
    @recipe_cookbook = RecipeCookbook.new(params[:recipe_cookbook])

    respond_to do |format|
      if @recipe_cookbook.save
        format.html { redirect_to @recipe_cookbook, notice: 'Recipe cookbook was successfully created.' }
        format.json { render json: @recipe_cookbook, status: :created, location: @recipe_cookbook }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe_cookbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_cookbooks/1
  # PUT /recipe_cookbooks/1.json
  def update
    @recipe_cookbook = RecipeCookbook.find(params[:id])

    respond_to do |format|
      if @recipe_cookbook.update_attributes(params[:recipe_cookbook])
        format.html { redirect_to @recipe_cookbook, notice: 'Recipe cookbook was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe_cookbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_cookbooks/1
  # DELETE /recipe_cookbooks/1.json
  def destroy
    @recipe_cookbook = RecipeCookbook.find(params[:id])
    @recipe_cookbook.destroy

    respond_to do |format|
      format.html { redirect_to recipe_cookbooks_url }
      format.json { head :ok }
    end
  end
end
