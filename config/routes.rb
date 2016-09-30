Rails.application.routes.draw do
  resources :pedidos
  devise_for :useres
  get 'paginas/bebidas'

  get 'paginas/contato'

  get 'paginas/relatorios'

  get 'paginas/carrinho'
  resources :useres	
  resources :produtos
 resources  :produtoslistagem , only:[:index]
  resources :usuarioslistagem , only:[:index]
  resources :categorias
  root :to => 'paginas#bebidas'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
