class AddSearchValueDictionaries < ActiveRecord::Migration
  def change
    add_column :allowed_allergies, :search_value, :string
    add_column :allowed_diets, :search_value, :string
    add_column :excluded_ingredients, :search_value, :string
    remove_column :excluded_ingredients, :yummly_id, :string
  end
end
