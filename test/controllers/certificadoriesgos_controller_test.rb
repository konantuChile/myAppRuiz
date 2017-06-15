require 'test_helper'

class CertificadoriesgosControllerTest < ActionController::TestCase
  setup do
    @certificadoriesgo = certificadoriesgos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificadoriesgos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificadoriesgo" do
    assert_difference('Certificadoriesgo.count') do
      post :create, certificadoriesgo: { fechacertificadoriesgo: @certificadoriesgo.fechacertificadoriesgo, idanalista: @certificadoriesgo.idanalista, idcliente: @certificadoriesgo.idcliente, idencargado: @certificadoriesgo.idencargado, idtipomoneda: @certificadoriesgo.idtipomoneda, montoaprobado: @certificadoriesgo.montoaprobado }
    end

    assert_redirected_to certificadoriesgo_path(assigns(:certificadoriesgo))
  end

  test "should show certificadoriesgo" do
    get :show, id: @certificadoriesgo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certificadoriesgo
    assert_response :success
  end

  test "should update certificadoriesgo" do
    patch :update, id: @certificadoriesgo, certificadoriesgo: { fechacertificadoriesgo: @certificadoriesgo.fechacertificadoriesgo, idanalista: @certificadoriesgo.idanalista, idcliente: @certificadoriesgo.idcliente, idencargado: @certificadoriesgo.idencargado, idtipomoneda: @certificadoriesgo.idtipomoneda, montoaprobado: @certificadoriesgo.montoaprobado }
    assert_redirected_to certificadoriesgo_path(assigns(:certificadoriesgo))
  end

  test "should destroy certificadoriesgo" do
    assert_difference('Certificadoriesgo.count', -1) do
      delete :destroy, id: @certificadoriesgo
    end

    assert_redirected_to certificadoriesgos_path
  end
end
