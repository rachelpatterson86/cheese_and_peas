class CreateAllowedDiets < ActiveRecord::Migration
  def change
    create_table :allowed_diets do |t|
      t.integer  :yummly_id
      t.string   :diet_name
      t.timestamps null: false
    end
  end
end
