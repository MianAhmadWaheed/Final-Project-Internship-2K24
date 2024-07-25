class AddForeignKeysToProductSizes < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :product_sizes, :products
    # Only add the index if it doesn't already exist
    unless index_exists?(:product_sizes, :product_id)
      add_index :product_sizes, :product_id
    end
  end
end
