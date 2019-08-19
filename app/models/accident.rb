class Accident < ApplicationRecord
  belongs_to :user
  belongs_to :injury
end
