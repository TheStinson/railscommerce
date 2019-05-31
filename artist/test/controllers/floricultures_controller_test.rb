require 'test_helper'

class FloriculturesControllerTest < ActionController::TestCase
  setup do
    @floriculture = floricultures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floricultures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floriculture" do
    assert_difference('Floriculture.count') do
      post :create, floriculture: { climate: @floriculture.climate, description: @floriculture.description, diseases: @floriculture.diseases, fertilizer: @floriculture.fertilizer, name: @floriculture.name, season: @floriculture.season, seedrate: @floriculture.seedrate, soil: @floriculture.soil, varieties: @floriculture.varieties }
    end

    assert_redirected_to floriculture_path(assigns(:floriculture))
  end

  test "should show floriculture" do
    get :show, id: @floriculture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floriculture
    assert_response :success
  end

  test "should update floriculture" do
    patch :update, id: @floriculture, floriculture: { climate: @floriculture.climate, description: @floriculture.description, diseases: @floriculture.diseases, fertilizer: @floriculture.fertilizer, name: @floriculture.name, season: @floriculture.season, seedrate: @floriculture.seedrate, soil: @floriculture.soil, varieties: @floriculture.varieties }
    assert_redirected_to floriculture_path(assigns(:floriculture))
  end

  test "should destroy floriculture" do
    assert_difference('Floriculture.count', -1) do
      delete :destroy, id: @floriculture
    end

    assert_redirected_to floricultures_path
  end
end
