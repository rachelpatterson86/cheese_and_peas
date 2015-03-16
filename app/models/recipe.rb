class Recipe < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites
  has_many :comments
end
