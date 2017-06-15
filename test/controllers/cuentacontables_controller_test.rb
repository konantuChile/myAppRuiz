require 'test_helper'

class CuentacontablesControllerTest < ActionController::TestCase
  setup do
    @cuentacontable = cuentacontables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cuentacontables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cuentacontable" do
    assert_difference('Cuentacontable.count') do
      post :create, cuentacontable: { fechaingresocuentacontab: @cuentacontable.fechaingresocuentacontab, idtipocuenta: @cuentacontable.idtipocuenta, nombrecuentacontable: @cuentacontable.nombrecuentacontable }
    end

    assert_redirected_to cuentacontable_path(assigns(:cuentacontable))
  end

  test "should show cuentacontable" do
    get :show, id: @cuentacontable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cuentacontable
    assert_response :success
  end

  test "should update cuentacontable" do
    patch :update, id: @cuentacontable, cuentacontable: { fechaingresocuentacontab: @cuentacontable.fechaingresocuentacontab, idtipocuenta: @cuentacontable.idtipocuenta, nombrecuentacontable: @cuentacontable.nombrecuentacontable }
    assert_redirected_to cuentacontable_path(assigns(:cuentacontable))
  end

  test "should destroy cuentacontable" do
    assert_difference('Cuentacontable.count', -1) do
      delete :destroy, id: @cuentacontable
    end

    assert_redirected_to cuentacontables_path
  end
end
