class CreateFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :foods do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :unit
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
