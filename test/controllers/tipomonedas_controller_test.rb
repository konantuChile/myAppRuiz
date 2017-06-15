require 'test_helper'

class TipomonedasControllerTest < ActionController::TestCase
  setup do
    @tipomoneda = tipomonedas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipomonedas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipomoneda" do
    assert_difference('Tipomoneda.count') do
      post :create, tipomoneda: { fechaingresotipomo: @tipomoneda.fechaingresotipomo, nombretipomoneda: @tipomoneda.nombretipomoneda }
    end

    assert_redirected_to tipomoneda_path(assigns(:tipomoneda))
  end

  test "should show tipomoneda" do
    get :show, id: @tipomoneda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipomoneda
    assert_response :success
  end

  test "should update tipomoneda" do
    patch :update, id: @tipomoneda, tipomoneda: { fechaingresotipomo: @tipomoneda.fechaingresotipomo, nombretipomoneda: @tipomoneda.nombretipomoneda }
    assert_redirected_to tipomoneda_path(assigns(:tipomoneda))
  end

  test "should destroy tipomoneda" do
    assert_difference('Tipomoneda.count', -1) do
      delete :destroy, id: @tipomoneda
    end

    assert_redirected_to tipomonedas_path
  end
end
