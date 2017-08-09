class Recommend < ApplicationRecord
  # Direct associations

  belongs_to :recommend_rating

  belongs_to :entertainment

  belongs_to :friend

  # Indirect associations

  # Validations

end
