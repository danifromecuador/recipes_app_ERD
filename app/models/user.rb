class User < ApplicationRecord
  has_many :recipes
  has_many :foods

  validates_uniqueness_of :name
end
