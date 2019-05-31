require 'test_helper'

class AgrisControllerTest < ActionController::TestCase
  setup do
    @agri = agris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agri" do
    assert_difference('Agri.count') do
      post :create, agri: { climate: @agri.climate, description: @agri.description, diseases: @agri.diseases, fertilizer: @agri.fertilizer, name: @agri.name, season: @agri.season, seedrate: @agri.seedrate, soil: @agri.soil, varieties: @agri.varieties }
    end

    assert_redirected_to agri_path(assigns(:agri))
  end

  test "should show agri" do
    get :show, id: @agri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agri
    assert_response :success
  end

  test "should update agri" do
    patch :update, id: @agri, agri: { climate: @agri.climate, description: @agri.description, diseases: @agri.diseases, fertilizer: @agri.fertilizer, name: @agri.name, season: @agri.season, seedrate: @agri.seedrate, soil: @agri.soil, varieties: @agri.varieties }
    assert_redirected_to agri_path(assigns(:agri))
  end

  test "should destroy agri" do
    assert_difference('Agri.count', -1) do
      delete :destroy, id: @agri
    end

    assert_redirected_to agris_path
  end
end
