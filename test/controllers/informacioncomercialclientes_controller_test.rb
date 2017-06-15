require 'test_helper'

class InformacioncomercialclientesControllerTest < ActionController::TestCase
  setup do
    @informacioncomercialcliente = informacioncomercialclientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacioncomercialclientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacioncomercialcliente" do
    assert_difference('Informacioncomercialcliente.count') do
      post :create, informacioncomercialcliente: { fechafincompromisoinformacion: @informacioncomercialcliente.fechafincompromisoinformacion, fechaingresoinfcomercial: @informacioncomercialcliente.fechaingresoinfcomercial, idcliente: @informacioncomercialcliente.idcliente, idestudioriesgo: @informacioncomercialcliente.idestudioriesgo, idnivelriesgo: @informacioncomercialcliente.idnivelriesgo, resultadoinforcomercial: @informacioncomercialcliente.resultadoinforcomercial, resultadoinforcontable: @informacioncomercialcliente.resultadoinforcontable }
    end

    assert_redirected_to informacioncomercialcliente_path(assigns(:informacioncomercialcliente))
  end

  test "should show informacioncomercialcliente" do
    get :show, id: @informacioncomercialcliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacioncomercialcliente
    assert_response :success
  end

  test "should update informacioncomercialcliente" do
    patch :update, id: @informacioncomercialcliente, informacioncomercialcliente: { fechafincompromisoinformacion: @informacioncomercialcliente.fechafincompromisoinformacion, fechaingresoinfcomercial: @informacioncomercialcliente.fechaingresoinfcomercial, idcliente: @informacioncomercialcliente.idcliente, idestudioriesgo: @informacioncomercialcliente.idestudioriesgo, idnivelriesgo: @informacioncomercialcliente.idnivelriesgo, resultadoinforcomercial: @informacioncomercialcliente.resultadoinforcomercial, resultadoinforcontable: @informacioncomercialcliente.resultadoinforcontable }
    assert_redirected_to informacioncomercialcliente_path(assigns(:informacioncomercialcliente))
  end

  test "should destroy informacioncomercialcliente" do
    assert_difference('Informacioncomercialcliente.count', -1) do
      delete :destroy, id: @informacioncomercialcliente
    end

    assert_redirected_to informacioncomercialclientes_path
  end
end
