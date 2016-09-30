class RemoveNascimentoFromUseres < ActiveRecord::Migration[5.0]
  def change
    remove_column :useres, :nascimento, :string
  end
end
