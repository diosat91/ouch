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

require 'test_helper'

class AccidentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
