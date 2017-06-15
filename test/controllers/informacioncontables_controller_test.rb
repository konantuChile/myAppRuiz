require 'test_helper'

class InformacioncontablesControllerTest < ActionController::TestCase
  setup do
    @informacioncontable = informacioncontables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacioncontables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacioncontable" do
    assert_difference('Informacioncontable.count') do
      post :create, informacioncontable: { correlativoinformacion: @informacioncontable.correlativoinformacion, fechaingresoinformcontables: @informacioncontable.fechaingresoinformcontables, idcuentacontable: @informacioncontable.idcuentacontable, idtipomoneda: @informacioncontable.idtipomoneda, montoinforcontable: @informacioncontable.montoinforcontable, periodoinforcontable: @informacioncontable.periodoinforcontable }
    end

    assert_redirected_to informacioncontable_path(assigns(:informacioncontable))
  end

  test "should show informacioncontable" do
    get :show, id: @informacioncontable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacioncontable
    assert_response :success
  end

  test "should update informacioncontable" do
    patch :update, id: @informacioncontable, informacioncontable: { correlativoinformacion: @informacioncontable.correlativoinformacion, fechaingresoinformcontables: @informacioncontable.fechaingresoinformcontables, idcuentacontable: @informacioncontable.idcuentacontable, idtipomoneda: @informacioncontable.idtipomoneda, montoinforcontable: @informacioncontable.montoinforcontable, periodoinforcontable: @informacioncontable.periodoinforcontable }
    assert_redirected_to informacioncontable_path(assigns(:informacioncontable))
  end

  test "should destroy informacioncontable" do
    assert_difference('Informacioncontable.count', -1) do
      delete :destroy, id: @informacioncontable
    end

    assert_redirected_to informacioncontables_path
  end
end
