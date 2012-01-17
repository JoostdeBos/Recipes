require 'test_helper'

class RecipePicturesControllerTest < ActionController::TestCase
  setup do
    @recipe_picture = recipe_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_picture" do
    assert_difference('RecipePicture.count') do
      post :create, recipe_picture: @recipe_picture.attributes
    end

    assert_redirected_to recipe_picture_path(assigns(:recipe_picture))
  end

  test "should show recipe_picture" do
    get :show, id: @recipe_picture.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_picture.to_param
    assert_response :success
  end

  test "should update recipe_picture" do
    put :update, id: @recipe_picture.to_param, recipe_picture: @recipe_picture.attributes
    assert_redirected_to recipe_picture_path(assigns(:recipe_picture))
  end

  test "should destroy recipe_picture" do
    assert_difference('RecipePicture.count', -1) do
      delete :destroy, id: @recipe_picture.to_param
    end

    assert_redirected_to recipe_pictures_path
  end
end
