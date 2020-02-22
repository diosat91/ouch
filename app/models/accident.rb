# == Schema Information
#
# Table name: accidents
#
#  id              :bigint           not null, primary key
#  user_id         :bigint           not null
#  injury_id       :bigint           not null
#  description     :text
#  occurrence_date :date
#  recovery_date   :date
#  sport           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Accident < ApplicationRecord
  belongs_to :user
  belongs_to :injury, optional: true, inverse_of: :accident

  accepts_nested_attributes_for :injury, allow_destroy: true

  validates_presence_of :occurrence_date, :sport
  validate :occurrence_date_not_in_future, on: :create
  
  def occurrence_date_not_in_future
    errors.add(:occurrence_date, 'cannot be in the future') if occurrence_date.to_date > Date.today
  end

  def set_recovery_date(date, number_of_days)
    self[:recovery_date] = date + number_of_days.to_i.days
  end

end
