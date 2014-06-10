class AddVariationsToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :variations, :text
  end
end
