json.extract! produto, :id, :descricao, :volume, :imagem, :categoria, :qtdunit, :valorunit, :created_at, :updated_at
json.url produto_url(produto, format: :json)