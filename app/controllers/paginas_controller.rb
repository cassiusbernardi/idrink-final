class PaginasController < ApplicationController
  def bebidas
  	@produtos = Produto.all
  end

  def contato
  end

  def relatorios
  end

  def carrinho
  end
end
