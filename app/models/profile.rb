class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :excluded_ingredients
  has_many :allowed_allergies
  has_many :allowed_diets
end
