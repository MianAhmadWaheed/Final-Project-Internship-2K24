class AddSizeIdToProductSizes < ActiveRecord::Migration[7.1]
  def change
    add_column :product_sizes, :size_id, :integer, null: false
    add_foreign_key :product_sizes, :sizes
    add_index :product_sizes, :size_id
  end
end
