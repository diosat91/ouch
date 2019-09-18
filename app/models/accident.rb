class Accident < ApplicationRecord
  belongs_to :user
  belongs_to :injury, optional: true, inverse_of: :accident

  accepts_nested_attributes_for :injury, allow_destroy: true

end
