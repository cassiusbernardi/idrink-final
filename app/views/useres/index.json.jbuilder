json.array!(@useres) do |user|
  json.extract! user, :email,:name, :endereco, :tipo, :cpf, :telefone, :dtnascimento, :password
  json.url user_url(user, format: :json)
end
