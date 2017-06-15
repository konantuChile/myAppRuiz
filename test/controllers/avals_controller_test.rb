require 'test_helper'

class AvalsControllerTest < ActionController::TestCase
  setup do
    @aval = avals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aval" do
    assert_difference('Aval.count') do
      post :create, aval: { fechaingresoaval: @aval.fechaingresoaval, montomaxgarantia: @aval.montomaxgarantia, rutempresa: @aval.rutempresa }
    end

    assert_redirected_to aval_path(assigns(:aval))
  end

  test "should show aval" do
    get :show, id: @aval
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aval
    assert_response :success
  end

  test "should update aval" do
    patch :update, id: @aval, aval: { fechaingresoaval: @aval.fechaingresoaval, montomaxgarantia: @aval.montomaxgarantia, rutempresa: @aval.rutempresa }
    assert_redirected_to aval_path(assigns(:aval))
  end

  test "should destroy aval" do
    assert_difference('Aval.count', -1) do
      delete :destroy, id: @aval
    end

    assert_redirected_to avals_path
  end
end
