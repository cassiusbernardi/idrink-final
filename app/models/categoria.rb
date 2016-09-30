class Categoria < ApplicationRecord
	validates_presence_of :descricao, message: "A descricao deve ser preenchida"

	has_many :produtos
end
