class RecommendRating < ApplicationRecord
  # Direct associations

  has_many   :recommends,
             :dependent => :destroy

  belongs_to :rating

  belongs_to :friend

  # Indirect associations

  # Validations

end
