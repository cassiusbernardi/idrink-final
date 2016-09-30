class AddTipoToUseres < ActiveRecord::Migration[5.0]
  def change
    add_column :useres, :tipo, :string
  end
end
