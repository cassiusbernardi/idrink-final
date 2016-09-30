class AddEnderecoToUseres < ActiveRecord::Migration[5.0]
  def change
    add_column :useres, :endereco, :string
  end
end
