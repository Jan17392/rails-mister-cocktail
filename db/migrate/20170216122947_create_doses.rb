class CreateDoses < ActiveRecord::Migration[5.0]
  def change
    create_table :doses do |t|
      t.text :description
      t.integer :ingredient_id
      t.integer :cocktail_id

      t.timestamps
    end
  end
end
