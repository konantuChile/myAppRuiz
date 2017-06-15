require 'test_helper'

class ContienensControllerTest < ActionController::TestCase
  setup do
    @contienen = contienens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contienens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contienen" do
    assert_difference('Contienen.count') do
      post :create, contienen: { foliocertificadoriesgo: @contienen.foliocertificadoriesgo, idavalesencertificados: @contienen.idavalesencertificados }
    end

    assert_redirected_to contienen_path(assigns(:contienen))
  end

  test "should show contienen" do
    get :show, id: @contienen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contienen
    assert_response :success
  end

  test "should update contienen" do
    patch :update, id: @contienen, contienen: { foliocertificadoriesgo: @contienen.foliocertificadoriesgo, idavalesencertificados: @contienen.idavalesencertificados }
    assert_redirected_to contienen_path(assigns(:contienen))
  end

  test "should destroy contienen" do
    assert_difference('Contienen.count', -1) do
      delete :destroy, id: @contienen
    end

    assert_redirected_to contienens_path
  end
end
