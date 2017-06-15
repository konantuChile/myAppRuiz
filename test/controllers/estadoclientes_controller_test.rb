require 'test_helper'

class EstadoclientesControllerTest < ActionController::TestCase
  setup do
    @estadocliente = estadoclientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estadoclientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estadocliente" do
    assert_difference('Estadocliente.count') do
      post :create, estadocliente: { fechaingresoestadoclie: @estadocliente.fechaingresoestadoclie, nombreestadocliente: @estadocliente.nombreestadocliente }
    end

    assert_redirected_to estadocliente_path(assigns(:estadocliente))
  end

  test "should show estadocliente" do
    get :show, id: @estadocliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estadocliente
    assert_response :success
  end

  test "should update estadocliente" do
    patch :update, id: @estadocliente, estadocliente: { fechaingresoestadoclie: @estadocliente.fechaingresoestadoclie, nombreestadocliente: @estadocliente.nombreestadocliente }
    assert_redirected_to estadocliente_path(assigns(:estadocliente))
  end

  test "should destroy estadocliente" do
    assert_difference('Estadocliente.count', -1) do
      delete :destroy, id: @estadocliente
    end

    assert_redirected_to estadoclientes_path
  end
end
