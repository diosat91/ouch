class Team < ApplicationRecord
	has_many :memberships
	has_many :users, through: :memberships
	has_many :accidents, through: :users

	validates :name, :activity, presence: true
end
