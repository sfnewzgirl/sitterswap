class Person < ApplicationRecord
  has_many :family_people
  has_many :families, through: :family_people
end
