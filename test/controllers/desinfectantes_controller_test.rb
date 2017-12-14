require 'test_helper'

class DesinfectantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desinfectante = desinfectantes(:one)
  end

  test "should get index" do
    get desinfectantes_url
    assert_response :success
  end

  test "should get new" do
    get new_desinfectante_url
    assert_response :success
  end

  test "should create desinfectante" do
    assert_difference('Desinfectante.count') do
      post desinfectantes_url, params: { desinfectante: { liquido: @desinfectante.liquido, marca: @desinfectante.marca, precio: @desinfectante.precio, presentacion: @desinfectante.presentacion, stock: @desinfectante.stock, tipo: @desinfectante.tipo } }
    end

    assert_redirected_to desinfectante_url(Desinfectante.last)
  end

  test "should show desinfectante" do
    get desinfectante_url(@desinfectante)
    assert_response :success
  end

  test "should get edit" do
    get edit_desinfectante_url(@desinfectante)
    assert_response :success
  end

  test "should update desinfectante" do
    patch desinfectante_url(@desinfectante), params: { desinfectante: { liquido: @desinfectante.liquido, marca: @desinfectante.marca, precio: @desinfectante.precio, presentacion: @desinfectante.presentacion, stock: @desinfectante.stock, tipo: @desinfectante.tipo } }
    assert_redirected_to desinfectante_url(@desinfectante)
  end

  test "should destroy desinfectante" do
    assert_difference('Desinfectante.count', -1) do
      delete desinfectante_url(@desinfectante)
    end

    assert_redirected_to desinfectantes_url
  end
end
