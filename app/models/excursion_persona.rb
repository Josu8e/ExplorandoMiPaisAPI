class ExcursionPersona < ApplicationRecord
  belongs_to :person
  belongs_to :excursion
end
