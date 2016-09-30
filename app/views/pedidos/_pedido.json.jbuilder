json.extract! pedido, :id, :codped, :dataped, :qtdprod, :endereco, :valortotal, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)