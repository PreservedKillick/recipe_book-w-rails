class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.text :instructions
      t.integer :rating

    end
  end
end
