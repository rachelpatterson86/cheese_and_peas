class Favorite < ActiveRecord::Base
  belongs_to :user, counter_cache: true
  # users table with column favorites_count
  belongs_to :recipe, counter_cache: true
  # recipes table with column favorites_count
end

# When we get @user, we fetch it from the database
# and "build" or instantiate a User model object.
# And it fills in the values we got from database.

# @user.favorites_count == 4 # true
# @user.favorites << @recipe

# When we add a new favorite with the << association.
# Favorite.create(:user_id => @user.id, :recipe_id => @recipe.id)
# It creates the database and updates the count on the users table.
# But *NOT* on the model instance/object @user.

# @user.favorites_count == 5 # false
# @user = User.find(@user.id)
# @user.favorites_count == 5 # true

# The Stale Object/Stale Record Problem
# One solution: User.reset_counters(@user.id, :favorites)
