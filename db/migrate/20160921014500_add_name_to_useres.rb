class AddNameToUseres < ActiveRecord::Migration[5.0]
  def change
    add_column :useres, :name, :string
  end
end
