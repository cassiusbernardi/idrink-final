class Produto < ApplicationRecord

	validates_presence_of :descricao, message: "A descricao deve ser preenchida"
	validates_presence_of :volume, message: "O volume deve ser preenchido"
	validates_numericality_of :valorunit, message: "O valor deve ser numérico"
	mount_uploader :img, ImgProdutoUploader

	belongs_to :categoria
end
