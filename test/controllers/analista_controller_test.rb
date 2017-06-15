require 'test_helper'

class AnalistaControllerTest < ActionController::TestCase
  setup do
    @analistum = analista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:analista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create analistum" do
    assert_difference('Analistum.count') do
      post :create, analistum: { cantidadmaxanalisis: @analistum.cantidadmaxanalisis, fechaingresoanalista: @analistum.fechaingresoanalista, idempleado: @analistum.idempleado, idencargado: @analistum.idencargado }
    end

    assert_redirected_to analistum_path(assigns(:analistum))
  end

  test "should show analistum" do
    get :show, id: @analistum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @analistum
    assert_response :success
  end

  test "should update analistum" do
    patch :update, id: @analistum, analistum: { cantidadmaxanalisis: @analistum.cantidadmaxanalisis, fechaingresoanalista: @analistum.fechaingresoanalista, idempleado: @analistum.idempleado, idencargado: @analistum.idencargado }
    assert_redirected_to analistum_path(assigns(:analistum))
  end

  test "should destroy analistum" do
    assert_difference('Analistum.count', -1) do
      delete :destroy, id: @analistum
    end

    assert_redirected_to analista_path
  end
end
