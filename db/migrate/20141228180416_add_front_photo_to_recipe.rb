class AddFrontPhotoToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :card_front_url, :string
  end
end
