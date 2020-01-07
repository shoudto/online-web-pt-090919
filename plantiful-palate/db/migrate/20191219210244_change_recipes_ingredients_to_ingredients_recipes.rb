class ChangeRecipesIngredientsToIngredientsRecipes < ActiveRecord::Migration
  def change
    drop_table :recipes_ingredients
    create_join_table :ingredients, :recipes do |t|
      t.integer :ingredient_id
      t.integer :recipe_id
    end
  end
end
