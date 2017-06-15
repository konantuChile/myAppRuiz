require 'test_helper'

class TipocuentaControllerTest < ActionController::TestCase
  setup do
    @tipocuentum = tipocuenta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipocuenta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipocuentum" do
    assert_difference('Tipocuentum.count') do
      post :create, tipocuentum: { fechaingresotipocuenta: @tipocuentum.fechaingresotipocuenta, nombretipocuenta: @tipocuentum.nombretipocuenta }
    end

    assert_redirected_to tipocuentum_path(assigns(:tipocuentum))
  end

  test "should show tipocuentum" do
    get :show, id: @tipocuentum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipocuentum
    assert_response :success
  end

  test "should update tipocuentum" do
    patch :update, id: @tipocuentum, tipocuentum: { fechaingresotipocuenta: @tipocuentum.fechaingresotipocuenta, nombretipocuenta: @tipocuentum.nombretipocuenta }
    assert_redirected_to tipocuentum_path(assigns(:tipocuentum))
  end

  test "should destroy tipocuentum" do
    assert_difference('Tipocuentum.count', -1) do
      delete :destroy, id: @tipocuentum
    end

    assert_redirected_to tipocuenta_path
  end
end
