class Friend < ApplicationRecord
  # Direct associations

  has_many   :recommend_ratings,
             :dependent => :destroy

  has_many   :recommends,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
