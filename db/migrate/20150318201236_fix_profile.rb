class FixProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :user_id, :integer
    change_column :profiles, :excluded_ingredient_id, :integer
  end
end
