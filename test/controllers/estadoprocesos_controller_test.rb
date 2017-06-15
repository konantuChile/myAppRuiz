require 'test_helper'

class EstadoprocesosControllerTest < ActionController::TestCase
  setup do
    @estadoproceso = estadoprocesos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estadoprocesos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estadoproceso" do
    assert_difference('Estadoproceso.count') do
      post :create, estadoproceso: { fechaingresoestado: @estadoproceso.fechaingresoestado, nombreestadoproceso: @estadoproceso.nombreestadoproceso }
    end

    assert_redirected_to estadoproceso_path(assigns(:estadoproceso))
  end

  test "should show estadoproceso" do
    get :show, id: @estadoproceso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estadoproceso
    assert_response :success
  end

  test "should update estadoproceso" do
    patch :update, id: @estadoproceso, estadoproceso: { fechaingresoestado: @estadoproceso.fechaingresoestado, nombreestadoproceso: @estadoproceso.nombreestadoproceso }
    assert_redirected_to estadoproceso_path(assigns(:estadoproceso))
  end

  test "should destroy estadoproceso" do
    assert_difference('Estadoproceso.count', -1) do
      delete :destroy, id: @estadoproceso
    end

    assert_redirected_to estadoprocesos_path
  end
end
