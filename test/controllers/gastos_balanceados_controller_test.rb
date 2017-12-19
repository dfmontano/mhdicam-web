require 'test_helper'

class GastosBalanceadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gastos_balanceado = gastos_balanceados(:one)
  end

  test "should get index" do
    get gastos_balanceados_url
    assert_response :success
  end

  test "should get new" do
    get new_gastos_balanceado_url
    assert_response :success
  end

  test "should create gastos_balanceado" do
    assert_difference('GastosBalanceado.count') do
      post gastos_balanceados_url, params: { gastos_balanceado: { cantidad: @gastos_balanceado.cantidad, id_balanceado: @gastos_balanceado.id_balanceado, id_periodo: @gastos_balanceado.id_periodo, precioKg: @gastos_balanceado.precioKg, subtotal: @gastos_balanceado.subtotal } }
    end

    assert_redirected_to gastos_balanceado_url(GastosBalanceado.last)
  end

  test "should show gastos_balanceado" do
    get gastos_balanceado_url(@gastos_balanceado)
    assert_response :success
  end

  test "should get edit" do
    get edit_gastos_balanceado_url(@gastos_balanceado)
    assert_response :success
  end

  test "should update gastos_balanceado" do
    patch gastos_balanceado_url(@gastos_balanceado), params: { gastos_balanceado: { cantidad: @gastos_balanceado.cantidad, id_balanceado: @gastos_balanceado.id_balanceado, id_periodo: @gastos_balanceado.id_periodo, precioKg: @gastos_balanceado.precioKg, subtotal: @gastos_balanceado.subtotal } }
    assert_redirected_to gastos_balanceado_url(@gastos_balanceado)
  end

  test "should destroy gastos_balanceado" do
    assert_difference('GastosBalanceado.count', -1) do
      delete gastos_balanceado_url(@gastos_balanceado)
    end

    assert_redirected_to gastos_balanceados_url
  end
end
