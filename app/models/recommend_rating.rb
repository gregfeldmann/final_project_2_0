class RecommendRating < ApplicationRecord
  # Direct associations

  belongs_to :rating

  belongs_to :friend

  # Indirect associations

  # Validations

end
