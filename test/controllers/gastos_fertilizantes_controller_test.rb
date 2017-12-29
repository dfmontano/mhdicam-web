require 'test_helper'

class GastosFertilizantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gastos_fertilizante = gastos_fertilizantes(:one)
  end

  test "should get index" do
    get gastos_fertilizantes_url
    assert_response :success
  end

  test "should get new" do
    get new_gastos_fertilizante_url
    assert_response :success
  end

  test "should create gastos_fertilizante" do
    assert_difference('GastosFertilizante.count') do
      post gastos_fertilizantes_url, params: { gastos_fertilizante: { cantidad: @gastos_fertilizante.cantidad, id_fertilizante: @gastos_fertilizante.id_fertilizante, id_periodo: @gastos_fertilizante.id_periodo, precioUnit: @gastos_fertilizante.precioUnit, subtital: @gastos_fertilizante.subtital } }
    end

    assert_redirected_to gastos_fertilizante_url(GastosFertilizante.last)
  end

  test "should show gastos_fertilizante" do
    get gastos_fertilizante_url(@gastos_fertilizante)
    assert_response :success
  end

  test "should get edit" do
    get edit_gastos_fertilizante_url(@gastos_fertilizante)
    assert_response :success
  end

  test "should update gastos_fertilizante" do
    patch gastos_fertilizante_url(@gastos_fertilizante), params: { gastos_fertilizante: { cantidad: @gastos_fertilizante.cantidad, id_fertilizante: @gastos_fertilizante.id_fertilizante, id_periodo: @gastos_fertilizante.id_periodo, precioUnit: @gastos_fertilizante.precioUnit, subtital: @gastos_fertilizante.subtital } }
    assert_redirected_to gastos_fertilizante_url(@gastos_fertilizante)
  end

  test "should destroy gastos_fertilizante" do
    assert_difference('GastosFertilizante.count', -1) do
      delete gastos_fertilizante_url(@gastos_fertilizante)
    end

    assert_redirected_to gastos_fertilizantes_url
  end
end
