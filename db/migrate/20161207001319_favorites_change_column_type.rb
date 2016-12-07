class FavoritesChangeColumnType < ActiveRecord::Migration[5.0]
  def change
    change_column(:favorites, :recipe, :string)
end
end
