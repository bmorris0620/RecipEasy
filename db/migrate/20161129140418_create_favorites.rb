class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.integer :user
      t.integer :recipe

      t.timestamps
    end
  end
end
