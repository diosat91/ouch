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

require 'test_helper'

class InjuryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
