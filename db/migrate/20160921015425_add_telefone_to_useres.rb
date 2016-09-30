class AddTelefoneToUseres < ActiveRecord::Migration[5.0]
  def change
    add_column :useres, :telefone, :string
  end
end
