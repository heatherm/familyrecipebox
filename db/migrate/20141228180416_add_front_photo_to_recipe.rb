class AddFrontPhotoToRecipe < ActiveRecord::Migration
  def change
    add_column :recipe, :card_front_url, :string
  end
end
