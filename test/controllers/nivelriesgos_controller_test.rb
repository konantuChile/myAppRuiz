require 'test_helper'

class NivelriesgosControllerTest < ActionController::TestCase
  setup do
    @nivelriesgo = nivelriesgos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nivelriesgos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nivelriesgo" do
    assert_difference('Nivelriesgo.count') do
      post :create, nivelriesgo: { fechaingresonivriesgo: @nivelriesgo.fechaingresonivriesgo, nombrenivelriesgo: @nivelriesgo.nombrenivelriesgo }
    end

    assert_redirected_to nivelriesgo_path(assigns(:nivelriesgo))
  end

  test "should show nivelriesgo" do
    get :show, id: @nivelriesgo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nivelriesgo
    assert_response :success
  end

  test "should update nivelriesgo" do
    patch :update, id: @nivelriesgo, nivelriesgo: { fechaingresonivriesgo: @nivelriesgo.fechaingresonivriesgo, nombrenivelriesgo: @nivelriesgo.nombrenivelriesgo }
    assert_redirected_to nivelriesgo_path(assigns(:nivelriesgo))
  end

  test "should destroy nivelriesgo" do
    assert_difference('Nivelriesgo.count', -1) do
      delete :destroy, id: @nivelriesgo
    end

    assert_redirected_to nivelriesgos_path
  end
end
