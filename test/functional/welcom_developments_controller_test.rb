require 'test_helper'

class WelcomDevelopmentsControllerTest < ActionController::TestCase
  setup do
    @welcom_development = welcom_developments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:welcom_developments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create welcom_development" do
    assert_difference('WelcomDevelopment.count') do
      post :create, welcom_development: @welcom_development.attributes
    end

    assert_redirected_to welcom_development_path(assigns(:welcom_development))
  end

  test "should show welcom_development" do
    get :show, id: @welcom_development
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @welcom_development
    assert_response :success
  end

  test "should update welcom_development" do
    put :update, id: @welcom_development, welcom_development: @welcom_development.attributes
    assert_redirected_to welcom_development_path(assigns(:welcom_development))
  end

  test "should destroy welcom_development" do
    assert_difference('WelcomDevelopment.count', -1) do
      delete :destroy, id: @welcom_development
    end

    assert_redirected_to welcom_developments_path
  end
end
