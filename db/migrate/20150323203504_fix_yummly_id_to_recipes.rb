class FixYummlyIdToRecipes < ActiveRecord::Migration
  def change
    change_column :recipes, :yummly_id, :string
  end
end
