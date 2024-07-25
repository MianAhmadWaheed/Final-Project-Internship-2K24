class RemoveProductIdFromSizes < ActiveRecord::Migration[7.1]
  def change
    remove_column :sizes, :product_id, :integer
  end
end
