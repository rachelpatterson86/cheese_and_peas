class CreateAllowedAllergies < ActiveRecord::Migration
  def change
    create_table :allowed_allergies do |t|
      t.integer  :yummly_id
      t.string   :allergy_name      
      t.timestamps null: false
    end
  end
end
