require 'test_helper'

class TamanoempresasControllerTest < ActionController::TestCase
  setup do
    @tamanoempresa = tamanoempresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tamanoempresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tamanoempresa" do
    assert_difference('Tamanoempresa.count') do
      post :create, tamanoempresa: { fechaingresotamnoemp: @tamanoempresa.fechaingresotamnoemp, tamanoempresa: @tamanoempresa.tamanoempresa }
    end

    assert_redirected_to tamanoempresa_path(assigns(:tamanoempresa))
  end

  test "should show tamanoempresa" do
    get :show, id: @tamanoempresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tamanoempresa
    assert_response :success
  end

  test "should update tamanoempresa" do
    patch :update, id: @tamanoempresa, tamanoempresa: { fechaingresotamnoemp: @tamanoempresa.fechaingresotamnoemp, tamanoempresa: @tamanoempresa.tamanoempresa }
    assert_redirected_to tamanoempresa_path(assigns(:tamanoempresa))
  end

  test "should destroy tamanoempresa" do
    assert_difference('Tamanoempresa.count', -1) do
      delete :destroy, id: @tamanoempresa
    end

    assert_redirected_to tamanoempresas_path
  end
end
