class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.float :volume
      t.string :imagem
      t.string :categoria
      t.integer :qtdunit
      t.float :valorunit

      t.timestamps
    end
  end
end
