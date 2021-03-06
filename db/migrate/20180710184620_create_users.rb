class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :image
      t.string :uid
      t.integer :weight
      t.integer :height
      t.integer :daily_calories
      t.timestamps
    end
  end
end
