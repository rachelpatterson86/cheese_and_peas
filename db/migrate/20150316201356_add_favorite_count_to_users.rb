class AddFavoriteCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :favorites_count, :integer
  end
end
