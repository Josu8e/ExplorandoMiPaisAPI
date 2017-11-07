class Excursion < ApplicationRecord
  has_many :excursion_personas
  has_many :people, through: :excursion_personas
end
