class Team < ApplicationRecord
	has_many: :participants
	has_many: :users, through: :participants

end
