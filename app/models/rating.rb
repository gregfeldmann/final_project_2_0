class Rating < ApplicationRecord
  # Direct associations

  has_many   :recommend_ratings,
             :dependent => :destroy

  belongs_to :entertainment

  # Indirect associations

  # Validations

end
