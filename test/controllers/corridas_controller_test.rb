require 'test_helper'

class CorridasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corrida = corridas(:one)
  end

  test "should get index" do
    get corridas_url
    assert_response :success
  end

  test "should get new" do
    get new_corrida_url
    assert_response :success
  end

  test "should create corrida" do
    assert_difference('Corrida.count') do
      post corridas_url, params: { corrida: { estado: @corrida.estado, fechaFin: @corrida.fechaFin, fechaInicio: @corrida.fechaInicio } }
    end

    assert_redirected_to corrida_url(Corrida.last)
  end

  test "should show corrida" do
    get corrida_url(@corrida)
    assert_response :success
  end

  test "should get edit" do
    get edit_corrida_url(@corrida)
    assert_response :success
  end

  test "should update corrida" do
    patch corrida_url(@corrida), params: { corrida: { estado: @corrida.estado, fechaFin: @corrida.fechaFin, fechaInicio: @corrida.fechaInicio } }
    assert_redirected_to corrida_url(@corrida)
  end

  test "should destroy corrida" do
    assert_difference('Corrida.count', -1) do
      delete corrida_url(@corrida)
    end

    assert_redirected_to corridas_url
  end
end
