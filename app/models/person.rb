class Person < ApplicationRecord


  validates  :correo, presence:true
  validates :foto, presence:true
  validates :contrasenha, presence:true
  validates :nombre, presence:true

  has_many :excursion_personas
  has_many :excursions, through: :excursion_personas


  validates_uniqueness_of :correo


end
