class AddCpfToUseres < ActiveRecord::Migration[5.0]
  def change
    add_column :useres, :cpf, :string
  end
end
