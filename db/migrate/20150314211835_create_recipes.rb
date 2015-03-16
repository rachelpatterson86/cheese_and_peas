class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.integer :yummly_id
      t.text    :description
      t.string  :cuisine
      t.string  :course
      t.integer :max_total_time_in_seconds
      t.integer :favorites_count
      t.timestamps null: false
    end
  end
end
