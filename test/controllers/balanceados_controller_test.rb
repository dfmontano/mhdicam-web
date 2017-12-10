require 'test_helper'

class BalanceadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balanceado = balanceados(:one)
  end

  test "should get index" do
    get balanceados_url
    assert_response :success
  end

  test "should get new" do
    get new_balanceado_url
    assert_response :success
  end

  test "should create balanceado" do
    assert_difference('Balanceado.count') do
      post balanceados_url, params: { balanceado: { marca: @balanceado.marca, precio: @balanceado.precio, presentacion: @balanceado.presentacion, stock: @balanceado.stock, tipo: @balanceado.tipo } }
    end

    assert_redirected_to balanceado_url(Balanceado.last)
  end

  test "should show balanceado" do
    get balanceado_url(@balanceado)
    assert_response :success
  end

  test "should get edit" do
    get edit_balanceado_url(@balanceado)
    assert_response :success
  end

  test "should update balanceado" do
    patch balanceado_url(@balanceado), params: { balanceado: { marca: @balanceado.marca, precio: @balanceado.precio, presentacion: @balanceado.presentacion, stock: @balanceado.stock, tipo: @balanceado.tipo } }
    assert_redirected_to balanceado_url(@balanceado)
  end

  test "should destroy balanceado" do
    assert_difference('Balanceado.count', -1) do
      delete balanceado_url(@balanceado)
    end

    assert_redirected_to balanceados_url
  end
end
