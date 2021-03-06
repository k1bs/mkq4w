class CreatePieces < ActiveRecord::Migration[5.1]
  def change
    create_table :pieces do |t|
      t.string :title
      t.integer :year
      t.boolean :for_sale
      t.attachment :image
      t.timestamps
    end
  end
end
