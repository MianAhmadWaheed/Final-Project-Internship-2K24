class CreateSizes < ActiveRecord::Migration[7.1]
  def change
    create_table :sizes do |t|
      t.references :product, null: false, foreign_key: true
      t.string :size

      t.timestamps
    end
  end
end
