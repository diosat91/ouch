# == Schema Information
#
# Table name: teams
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  activity    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Team < ApplicationRecord
	has_many :accidents, through: :users
	has_many :memberships, dependent: :destroy
	has_many :users, through: :memberships

	validates :name, :activity, presence: true
end
