class LoginDetail < ApplicationRecord
  has_secure_password
  belongs_to :person
end
