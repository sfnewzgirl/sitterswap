class FamilyPerson < ApplicationRecord
  belongs_to :person
  belongs_to :family

  enum role: ["caregivers", "children", "sitters", "friends"]
end
