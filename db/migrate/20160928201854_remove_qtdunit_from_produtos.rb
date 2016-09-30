class RemoveQtdunitFromProdutos < ActiveRecord::Migration[5.0]
  def change
    remove_column :produtos, :qtdunit, :string
  end
end
