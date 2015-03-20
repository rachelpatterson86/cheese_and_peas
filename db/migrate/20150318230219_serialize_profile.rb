class SerializeProfile < ActiveRecord::Migration
  def change
    change_column :profiles, :excluded_ingredient_id, :text
    change_column :profiles, :allowed_allergy_id, :text
    change_column :profiles, :allowed_diet_id, :text
  end
end
