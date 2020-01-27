class Team < ApplicationRecord
	has_many :accidents, through: :users
	has_many :memberships, dependent: :destroy
	has_many :users, through: :memberships

	validates :name, :activity, presence: true
end
