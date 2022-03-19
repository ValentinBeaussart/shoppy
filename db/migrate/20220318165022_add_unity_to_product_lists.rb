class AddUnityToProductLists < ActiveRecord::Migration[6.1]
  def change
    add_column :product_lists, :unity, :string
  end
end
