class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  #There is a :scope option that you can use to specify one or more attributes that are used to limit the uniqueness check:

end
