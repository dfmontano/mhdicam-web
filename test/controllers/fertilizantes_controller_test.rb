require 'test_helper'

class FertilizantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fertilizante = fertilizantes(:one)
  end

  test "should get index" do
    get fertilizantes_url
    assert_response :success
  end

  test "should get new" do
    get new_fertilizante_url
    assert_response :success
  end

  test "should create fertilizante" do
    assert_difference('Fertilizante.count') do
      post fertilizantes_url, params: { fertilizante: { liquido: @fertilizante.liquido, marca: @fertilizante.marca, precio: @fertilizante.precio, presentacion: @fertilizante.presentacion, stock: @fertilizante.stock, tipo: @fertilizante.tipo } }
    end

    assert_redirected_to fertilizante_url(Fertilizante.last)
  end

  test "should show fertilizante" do
    get fertilizante_url(@fertilizante)
    assert_response :success
  end

  test "should get edit" do
    get edit_fertilizante_url(@fertilizante)
    assert_response :success
  end

  test "should update fertilizante" do
    patch fertilizante_url(@fertilizante), params: { fertilizante: { liquido: @fertilizante.liquido, marca: @fertilizante.marca, precio: @fertilizante.precio, presentacion: @fertilizante.presentacion, stock: @fertilizante.stock, tipo: @fertilizante.tipo } }
    assert_redirected_to fertilizante_url(@fertilizante)
  end

  test "should destroy fertilizante" do
    assert_difference('Fertilizante.count', -1) do
      delete fertilizante_url(@fertilizante)
    end

    assert_redirected_to fertilizantes_url
  end
end
