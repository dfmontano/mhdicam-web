require 'test_helper'

class VitaminasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vitamina = vitaminas(:one)
  end

  test "should get index" do
    get vitaminas_url
    assert_response :success
  end

  test "should get new" do
    get new_vitamina_url
    assert_response :success
  end

  test "should create vitamina" do
    assert_difference('Vitamina.count') do
      post vitaminas_url, params: { vitamina: { liquido: @vitamina.liquido, marca: @vitamina.marca, precio: @vitamina.precio, presentacion: @vitamina.presentacion, stock: @vitamina.stock, tipo: @vitamina.tipo } }
    end

    assert_redirected_to vitamina_url(Vitamina.last)
  end

  test "should show vitamina" do
    get vitamina_url(@vitamina)
    assert_response :success
  end

  test "should get edit" do
    get edit_vitamina_url(@vitamina)
    assert_response :success
  end

  test "should update vitamina" do
    patch vitamina_url(@vitamina), params: { vitamina: { liquido: @vitamina.liquido, marca: @vitamina.marca, precio: @vitamina.precio, presentacion: @vitamina.presentacion, stock: @vitamina.stock, tipo: @vitamina.tipo } }
    assert_redirected_to vitamina_url(@vitamina)
  end

  test "should destroy vitamina" do
    assert_difference('Vitamina.count', -1) do
      delete vitamina_url(@vitamina)
    end

    assert_redirected_to vitaminas_url
  end
end
