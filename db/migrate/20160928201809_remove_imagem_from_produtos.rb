class RemoveImagemFromProdutos < ActiveRecord::Migration[5.0]
  def change
    remove_column :produtos, :imagem, :string
  end
end
