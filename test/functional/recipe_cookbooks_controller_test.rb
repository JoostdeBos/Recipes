require 'test_helper'

class RecipeCookbooksControllerTest < ActionController::TestCase
  setup do
    @recipe_cookbook = recipe_cookbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_cookbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_cookbook" do
    assert_difference('RecipeCookbook.count') do
      post :create, recipe_cookbook: @recipe_cookbook.attributes
    end

    assert_redirected_to recipe_cookbook_path(assigns(:recipe_cookbook))
  end

  test "should show recipe_cookbook" do
    get :show, id: @recipe_cookbook.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_cookbook.to_param
    assert_response :success
  end

  test "should update recipe_cookbook" do
    put :update, id: @recipe_cookbook.to_param, recipe_cookbook: @recipe_cookbook.attributes
    assert_redirected_to recipe_cookbook_path(assigns(:recipe_cookbook))
  end

  test "should destroy recipe_cookbook" do
    assert_difference('RecipeCookbook.count', -1) do
      delete :destroy, id: @recipe_cookbook.to_param
    end

    assert_redirected_to recipe_cookbooks_path
  end
end
