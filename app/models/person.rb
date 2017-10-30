class Person < ApplicationRecord


  validates  :correo, presence:true
  validates :foto, presence:true
  validates :contrasenha, presence:true
  validates_uniqueness_of :correo


end
