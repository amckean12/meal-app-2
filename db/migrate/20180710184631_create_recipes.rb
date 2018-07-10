class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :calories
      t.integer :carbs
      t.integer :protein
      t.integer :fats
      t.timestamps
    end
  end
end
