class AddNascimentoToUseres < ActiveRecord::Migration[5.0]
  def change
    add_column :useres, :nascimento, :date
  end
end
