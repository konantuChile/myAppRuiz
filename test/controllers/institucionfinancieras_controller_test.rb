require 'test_helper'

class InstitucionfinancierasControllerTest < ActionController::TestCase
  setup do
    @institucionfinanciera = institucionfinancieras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institucionfinancieras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institucionfinanciera" do
    assert_difference('Institucionfinanciera.count') do
      post :create, institucionfinanciera: { contactoinstitucionfinanciera: @institucionfinanciera.contactoinstitucionfinanciera, direccioninstitucionfinanciera: @institucionfinanciera.direccioninstitucionfinanciera, emailinstitucionfinanciera: @institucionfinanciera.emailinstitucionfinanciera, fechaingresoinstfinanciera: @institucionfinanciera.fechaingresoinstfinanciera, foliocertificadoriesgo: @institucionfinanciera.foliocertificadoriesgo, nombreinstitucionfinanciera: @institucionfinanciera.nombreinstitucionfinanciera }
    end

    assert_redirected_to institucionfinanciera_path(assigns(:institucionfinanciera))
  end

  test "should show institucionfinanciera" do
    get :show, id: @institucionfinanciera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institucionfinanciera
    assert_response :success
  end

  test "should update institucionfinanciera" do
    patch :update, id: @institucionfinanciera, institucionfinanciera: { contactoinstitucionfinanciera: @institucionfinanciera.contactoinstitucionfinanciera, direccioninstitucionfinanciera: @institucionfinanciera.direccioninstitucionfinanciera, emailinstitucionfinanciera: @institucionfinanciera.emailinstitucionfinanciera, fechaingresoinstfinanciera: @institucionfinanciera.fechaingresoinstfinanciera, foliocertificadoriesgo: @institucionfinanciera.foliocertificadoriesgo, nombreinstitucionfinanciera: @institucionfinanciera.nombreinstitucionfinanciera }
    assert_redirected_to institucionfinanciera_path(assigns(:institucionfinanciera))
  end

  test "should destroy institucionfinanciera" do
    assert_difference('Institucionfinanciera.count', -1) do
      delete :destroy, id: @institucionfinanciera
    end

    assert_redirected_to institucionfinancieras_path
  end
end
