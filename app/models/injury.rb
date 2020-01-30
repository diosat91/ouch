class Injury < ApplicationRecord
	has_one :accident, required: false, inverse_of: :injury, dependent: :destroy
end