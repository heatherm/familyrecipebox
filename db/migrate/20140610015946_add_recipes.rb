class AddRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :source
      t.text :ingredients
      t.text :instructions
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
