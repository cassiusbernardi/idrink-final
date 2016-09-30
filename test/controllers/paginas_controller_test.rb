require 'test_helper'

class PaginasControllerTest < ActionDispatch::IntegrationTest
  test "should get bebidas" do
    get paginas_bebidas_url
    assert_response :success
  end

  test "should get contato" do
    get paginas_contato_url
    assert_response :success
  end

  test "should get relatorios" do
    get paginas_relatorios_url
    assert_response :success
  end

  test "should get carrinho" do
    get paginas_carrinho_url
    assert_response :success
  end

end
