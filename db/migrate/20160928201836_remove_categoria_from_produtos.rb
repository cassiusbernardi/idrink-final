class RemoveCategoriaFromProdutos < ActiveRecord::Migration[5.0]
  def change
    remove_column :produtos, :categoria, :string
  end
end
