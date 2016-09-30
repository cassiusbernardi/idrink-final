class CreatePedidos < ActiveRecord::Migration[5.0]
  def change
    create_table :pedidos do |t|
      t.integer :codped
      t.string :dataped
      t.string :qtdprod
      t.string :endereco
      t.float :valortotal

      t.timestamps
    end
  end
end
