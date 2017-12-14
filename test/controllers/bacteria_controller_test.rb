require 'test_helper'

class BacteriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bacterium = bacteria(:one)
  end

  test "should get index" do
    get bacteria_url
    assert_response :success
  end

  test "should get new" do
    get new_bacterium_url
    assert_response :success
  end

  test "should create bacterium" do
    assert_difference('Bacterium.count') do
      post bacteria_url, params: { bacterium: { liquido: @bacterium.liquido, marca: @bacterium.marca, precio: @bacterium.precio, presentacion: @bacterium.presentacion, stock: @bacterium.stock, tipo: @bacterium.tipo } }
    end

    assert_redirected_to bacterium_url(Bacterium.last)
  end

  test "should show bacterium" do
    get bacterium_url(@bacterium)
    assert_response :success
  end

  test "should get edit" do
    get edit_bacterium_url(@bacterium)
    assert_response :success
  end

  test "should update bacterium" do
    patch bacterium_url(@bacterium), params: { bacterium: { liquido: @bacterium.liquido, marca: @bacterium.marca, precio: @bacterium.precio, presentacion: @bacterium.presentacion, stock: @bacterium.stock, tipo: @bacterium.tipo } }
    assert_redirected_to bacterium_url(@bacterium)
  end

  test "should destroy bacterium" do
    assert_difference('Bacterium.count', -1) do
      delete bacterium_url(@bacterium)
    end

    assert_redirected_to bacteria_url
  end
end
