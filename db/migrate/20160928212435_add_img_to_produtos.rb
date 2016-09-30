class AddImgToProdutos < ActiveRecord::Migration[5.0]
  def change
    add_column :produtos, :img, :string
  end
end
