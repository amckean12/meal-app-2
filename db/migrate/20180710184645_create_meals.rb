class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.string :meal_type
      t.timestamps
    end
  end
end
