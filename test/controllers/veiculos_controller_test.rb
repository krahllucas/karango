require 'test_helper'

class VeiculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @veiculo = veiculos(:one)
  end

  test "should get index" do
    get veiculos_url
    assert_response :success
  end

  test "should get new" do
    get new_veiculo_url
    assert_response :success
  end

  test "should create veiculo" do
    assert_difference('Veiculo.count') do
      post veiculos_url, params: { veiculo: { marca_id: @veiculo.marca_id, nome: @veiculo.nome, placa: @veiculo.placa, tiposveiculo_id: @veiculo.tiposveiculo_id, usuario_id: @veiculo.usuario_id } }
    end

    assert_redirected_to veiculo_url(Veiculo.last)
  end

  test "should show veiculo" do
    get veiculo_url(@veiculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_veiculo_url(@veiculo)
    assert_response :success
  end

  test "should update veiculo" do
    patch veiculo_url(@veiculo), params: { veiculo: { marca_id: @veiculo.marca_id, nome: @veiculo.nome, placa: @veiculo.placa, tiposveiculo_id: @veiculo.tiposveiculo_id, usuario_id: @veiculo.usuario_id } }
    assert_redirected_to veiculo_url(@veiculo)
  end

  test "should destroy veiculo" do
    assert_difference('Veiculo.count', -1) do
      delete veiculo_url(@veiculo)
    end

    assert_redirected_to veiculos_url
  end
end
