require 'test_helper'

class PensamientosControllerTest < ActionController::TestCase
  setup do
    @pensamiento = pensamientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pensamientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pensamiento" do
    assert_difference('Pensamiento.count') do
      post :create, pensamiento: { descripcion: @pensamiento.descripcion }
    end

    assert_redirected_to pensamiento_path(assigns(:pensamiento))
  end

  test "should show pensamiento" do
    get :show, id: @pensamiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pensamiento
    assert_response :success
  end

  test "should update pensamiento" do
    put :update, id: @pensamiento, pensamiento: { descripcion: @pensamiento.descripcion }
    assert_redirected_to pensamiento_path(assigns(:pensamiento))
  end

  test "should destroy pensamiento" do
    assert_difference('Pensamiento.count', -1) do
      delete :destroy, id: @pensamiento
    end

    assert_redirected_to pensamientos_path
  end
end
