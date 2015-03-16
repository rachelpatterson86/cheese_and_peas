class CreateExcludedIngredients < ActiveRecord::Migration
  def change
    create_table :excluded_ingredients do |t|
      t.integer  :yummly_id
      t.string   :ingredient_name
      t.timestamps null: false
    end
  end
end
