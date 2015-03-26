class Profile < ActiveRecord::Base
  belongs_to :user
  validates :user, uniqueness: true

  serialize :excluded_ingredient_id
  serialize :allowed_allergy_id
  serialize :allowed_diet_id

  def allowed_diets
    allowed_diet_id.map { |x| AllowedDiet.find(x).search_value }
  end

  def allowed_allergies
    allowed_allergy_id.map { |x| AllowedAllergy.find(x).search_value }
  end

  def excluded_ingredients
    excluded_ingredient_id.map { |x| ExcludedIngredient.find(x).search_value }
  end

  def allowed_diet
    allowed_diet_id.map { |x| AllowedDiet.find(x) }
  end

  def allowed_allergy
    allowed_allergy_id.map { |x| AllowedAllergy.find(x) }
  end

  def excluded_ingredient
    excluded_ingredient_id.map { |x| ExcludedIngredient.find(x) }
  end


  # def excluded_ingredients
  #   ei = numeric(self.excluded_ingredient_id)
  #   search_val(ExcludedIngredient.find(ei))
  # end
  #
  # def allowed_allergies
  #   aa = numeric(self.allowed_allergy_id)
  #   search_val(ExcludedIngredient.find(aa))
  # end
  #
  # def allowed_diets
  #   ad = numeric(self.allowed_diet_id)
  #   search_val(ExcludedIngredient.find(ad))
  # end
  #
  # def numeric(val)
  #   str = val.scan(/\d+/)
  #   str.map!{ |s| s.to_i }
  # end
  #
  # def search_val(val)
  #   results = []
  #   val.each do |v|
  #     results << v.search_value
  #   end
  #   results
  # end

end
