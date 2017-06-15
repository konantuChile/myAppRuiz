require 'test_helper'

class EstudioriesgosControllerTest < ActionController::TestCase
  setup do
    @estudioriesgo = estudioriesgos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estudioriesgos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estudioriesgo" do
    assert_difference('Estudioriesgo.count') do
      post :create, estudioriesgo: { fechainicioestudioriesgo: @estudioriesgo.fechainicioestudioriesgo, fechaterminoestudioriesgo: @estudioriesgo.fechaterminoestudioriesgo, idanalista: @estudioriesgo.idanalista, idestadoproceso: @estudioriesgo.idestadoproceso, observacionestudio: @estudioriesgo.observacionestudio }
    end

    assert_redirected_to estudioriesgo_path(assigns(:estudioriesgo))
  end

  test "should show estudioriesgo" do
    get :show, id: @estudioriesgo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estudioriesgo
    assert_response :success
  end

  test "should update estudioriesgo" do
    patch :update, id: @estudioriesgo, estudioriesgo: { fechainicioestudioriesgo: @estudioriesgo.fechainicioestudioriesgo, fechaterminoestudioriesgo: @estudioriesgo.fechaterminoestudioriesgo, idanalista: @estudioriesgo.idanalista, idestadoproceso: @estudioriesgo.idestadoproceso, observacionestudio: @estudioriesgo.observacionestudio }
    assert_redirected_to estudioriesgo_path(assigns(:estudioriesgo))
  end

  test "should destroy estudioriesgo" do
    assert_difference('Estudioriesgo.count', -1) do
      delete :destroy, id: @estudioriesgo
    end

    assert_redirected_to estudioriesgos_path
  end
end
