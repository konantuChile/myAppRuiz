require 'test_helper'

class InformacioncomercialsControllerTest < ActionController::TestCase
  setup do
    @informacioncomercial = informacioncomercials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacioncomercials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacioncomercial" do
    assert_difference('Informacioncomercial.count') do
      post :create, informacioncomercial: { correlativoinformacion: @informacioncomercial.correlativoinformacion, fechahoraingreso: @informacioncomercial.fechahoraingreso, fechainforcomercial: @informacioncomercial.fechainforcomercial, idtipomoneda: @informacioncomercial.idtipomoneda, montoinforcomercial: @informacioncomercial.montoinforcomercial }
    end

    assert_redirected_to informacioncomercial_path(assigns(:informacioncomercial))
  end

  test "should show informacioncomercial" do
    get :show, id: @informacioncomercial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacioncomercial
    assert_response :success
  end

  test "should update informacioncomercial" do
    patch :update, id: @informacioncomercial, informacioncomercial: { correlativoinformacion: @informacioncomercial.correlativoinformacion, fechahoraingreso: @informacioncomercial.fechahoraingreso, fechainforcomercial: @informacioncomercial.fechainforcomercial, idtipomoneda: @informacioncomercial.idtipomoneda, montoinforcomercial: @informacioncomercial.montoinforcomercial }
    assert_redirected_to informacioncomercial_path(assigns(:informacioncomercial))
  end

  test "should destroy informacioncomercial" do
    assert_difference('Informacioncomercial.count', -1) do
      delete :destroy, id: @informacioncomercial
    end

    assert_redirected_to informacioncomercials_path
  end
end
