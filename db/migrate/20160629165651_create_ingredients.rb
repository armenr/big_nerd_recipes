class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.belongs_to :recipe, index: true, foreign_key: true
      t.string :name
      t.float :amount
      t.string :unit

      t.timestamps null: false
    end
  end
end
