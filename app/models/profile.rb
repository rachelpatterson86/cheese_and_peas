class Profile < ActiveRecord::Base
  belongs_to :user
  validates :user, uniqueness: true
  has_many :excluded_ingredients 
  has_many :allowed_allergies
  has_many :allowed_diets

  serialize :excluded_ingredients
  serialize :allowed_allergies
  serialize :allowed_diets
end
