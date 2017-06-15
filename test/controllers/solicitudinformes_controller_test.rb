require 'test_helper'

class SolicitudinformesControllerTest < ActionController::TestCase
  setup do
    @solicitudinforme = solicitudinformes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitudinformes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitudinforme" do
    assert_difference('Solicitudinforme.count') do
      post :create, solicitudinforme: { fechahoraingreso: @solicitudinforme.fechahoraingreso, idanalista: @solicitudinforme.idanalista, idejecutivo: @solicitudinforme.idejecutivo, idestadoproceso: @solicitudinforme.idestadoproceso, idtipomoneda: @solicitudinforme.idtipomoneda, montosolicitado: @solicitudinforme.montosolicitado }
    end

    assert_redirected_to solicitudinforme_path(assigns(:solicitudinforme))
  end

  test "should show solicitudinforme" do
    get :show, id: @solicitudinforme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitudinforme
    assert_response :success
  end

  test "should update solicitudinforme" do
    patch :update, id: @solicitudinforme, solicitudinforme: { fechahoraingreso: @solicitudinforme.fechahoraingreso, idanalista: @solicitudinforme.idanalista, idejecutivo: @solicitudinforme.idejecutivo, idestadoproceso: @solicitudinforme.idestadoproceso, idtipomoneda: @solicitudinforme.idtipomoneda, montosolicitado: @solicitudinforme.montosolicitado }
    assert_redirected_to solicitudinforme_path(assigns(:solicitudinforme))
  end

  test "should destroy solicitudinforme" do
    assert_difference('Solicitudinforme.count', -1) do
      delete :destroy, id: @solicitudinforme
    end

    assert_redirected_to solicitudinformes_path
  end
end
