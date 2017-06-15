require 'test_helper'

class EjecutivosControllerTest < ActionController::TestCase
  setup do
    @ejecutivo = ejecutivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ejecutivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ejecutivo" do
    assert_difference('Ejecutivo.count') do
      post :create, ejecutivo: { cantidadmaxclientes: @ejecutivo.cantidadmaxclientes, fechaingresoejecutivo: @ejecutivo.fechaingresoejecutivo, idcliente: @ejecutivo.idcliente, idempleado: @ejecutivo.idempleado }
    end

    assert_redirected_to ejecutivo_path(assigns(:ejecutivo))
  end

  test "should show ejecutivo" do
    get :show, id: @ejecutivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ejecutivo
    assert_response :success
  end

  test "should update ejecutivo" do
    patch :update, id: @ejecutivo, ejecutivo: { cantidadmaxclientes: @ejecutivo.cantidadmaxclientes, fechaingresoejecutivo: @ejecutivo.fechaingresoejecutivo, idcliente: @ejecutivo.idcliente, idempleado: @ejecutivo.idempleado }
    assert_redirected_to ejecutivo_path(assigns(:ejecutivo))
  end

  test "should destroy ejecutivo" do
    assert_difference('Ejecutivo.count', -1) do
      delete :destroy, id: @ejecutivo
    end

    assert_redirected_to ejecutivos_path
  end
end
