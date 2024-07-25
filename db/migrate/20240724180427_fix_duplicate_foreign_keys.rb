class FixDuplicateForeignKeys < ActiveRecord::Migration[7.1]
  def change
    # Remove the duplicate foreign key constraint if it exists
    if foreign_key_exists?(:product_sizes, :products)
      remove_foreign_key :product_sizes, :products
    end

    # Remove the duplicate index if it exists
    if index_exists?(:product_sizes, :product_id)
      remove_index :product_sizes, :product_id
    end

    # Re-add the correct foreign key constraints and indexes
    add_foreign_key :product_sizes, :products
    add_index :product_sizes, :product_id
  end
end
