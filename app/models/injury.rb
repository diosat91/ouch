class Injury < ApplicationRecord
<<<<<<< HEAD
  has_one :accident, required: false, inverse_of: :injury
=======
	has_one :accident, required: false, inverse_of: :injury, dependent: :destroy
>>>>>>> ab3474aeee2b0c6f0a19e709601b58fa306dc05b
end