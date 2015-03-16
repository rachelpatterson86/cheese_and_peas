class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :excluded_ingredient_id
      t.integer :allowed_allergy_id
      t.integer :allowed_diet_id
      t.timestamps null: false
    end
  end
end
