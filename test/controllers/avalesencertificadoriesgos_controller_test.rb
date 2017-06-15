require 'test_helper'

class AvalesencertificadoriesgosControllerTest < ActionController::TestCase
  setup do
    @avalesencertificadoriesgo = avalesencertificadoriesgos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avalesencertificadoriesgos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avalesencertificadoriesgo" do
    assert_difference('Avalesencertificadoriesgo.count') do
      post :create, avalesencertificadoriesgo: { fechahoraingreso: @avalesencertificadoriesgo.fechahoraingreso, idaval: @avalesencertificadoriesgo.idaval }
    end

    assert_redirected_to avalesencertificadoriesgo_path(assigns(:avalesencertificadoriesgo))
  end

  test "should show avalesencertificadoriesgo" do
    get :show, id: @avalesencertificadoriesgo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avalesencertificadoriesgo
    assert_response :success
  end

  test "should update avalesencertificadoriesgo" do
    patch :update, id: @avalesencertificadoriesgo, avalesencertificadoriesgo: { fechahoraingreso: @avalesencertificadoriesgo.fechahoraingreso, idaval: @avalesencertificadoriesgo.idaval }
    assert_redirected_to avalesencertificadoriesgo_path(assigns(:avalesencertificadoriesgo))
  end

  test "should destroy avalesencertificadoriesgo" do
    assert_difference('Avalesencertificadoriesgo.count', -1) do
      delete :destroy, id: @avalesencertificadoriesgo
    end

    assert_redirected_to avalesencertificadoriesgos_path
  end
end
