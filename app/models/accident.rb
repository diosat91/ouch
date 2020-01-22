class Accident < ApplicationRecord
  belongs_to :user
  belongs_to :injury, optional: true, inverse_of: :accident

  accepts_nested_attributes_for :injury, allow_destroy: true

  # validates_presence_of :occurrence_date, :sport
  # validate :occurrence_date_not_in_future, on: :create
  
  # SETTERS::start

  def occurrence_date_not_in_future
    errors.add(:occurrence_date, 'cannot be in the future') if occurrence_date.to_date > Date.today
  end

  def set_recovery_date(date, number_of_days)
    self[:recovery_date] = date + number_of_days.to_i.days
  end

end
