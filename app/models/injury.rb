# == Schema Information
#
# Table name: injuries
#
#  id                      :bigint           not null, primary key
#  body_part               :string
#  problem                 :string
#  estimated_recovery_time :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class Injury < ApplicationRecord
  has_one :accident, required: false, inverse_of: :injury, dependent: :destroy

  validates_presence_of :body_part, :problem

  def body_part_enum
    ["Right arm", "Left arm", "Right leg", "Left leg", "Hip", "Toe", "Ankle", "Shin",
     "Knee", "Fingers", "Hands", "Wrists", "Elbows", "Shoulders", "Collar bone", "Chest", 
     "Ribs", "Spine", "Neck", "Skull", "Nose", "Eyes", "Teeth", "Ears", "Skin", "Genitals"]
  end

  def problem_enum
    ["Bruises", "Sprain", "Strain", "Fracture", "Dislocation", "Break"]
  end

end
