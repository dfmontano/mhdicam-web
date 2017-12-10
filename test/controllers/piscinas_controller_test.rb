require 'test_helper'

class PiscinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piscina = piscinas(:one)
  end

  test "should get index" do
    get piscinas_url
    assert_response :success
  end

  test "should get new" do
    get new_piscina_url
    assert_response :success
  end

  test "should create piscina" do
    assert_difference('Piscina.count') do
      post piscinas_url, params: { piscina: { estado: @piscina.estado, hectareas: @piscina.hectareas, nombre: @piscina.nombre } }
    end

    assert_redirected_to piscina_url(Piscina.last)
  end

  test "should show piscina" do
    get piscina_url(@piscina)
    assert_response :success
  end

  test "should get edit" do
    get edit_piscina_url(@piscina)
    assert_response :success
  end

  test "should update piscina" do
    patch piscina_url(@piscina), params: { piscina: { estado: @piscina.estado, hectareas: @piscina.hectareas, nombre: @piscina.nombre } }
    assert_redirected_to piscina_url(@piscina)
  end

  test "should destroy piscina" do
    assert_difference('Piscina.count', -1) do
      delete piscina_url(@piscina)
    end

    assert_redirected_to piscinas_url
  end
end
