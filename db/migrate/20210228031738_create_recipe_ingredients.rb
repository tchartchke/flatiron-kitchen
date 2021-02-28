class CreateRecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe, foreign_key: true, null: false
      t.references :ingredient, foreign_key: true, null: false

      t.timestamps
    end
  end
end
