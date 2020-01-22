class RenameParticipantsToMemberships < ActiveRecord::Migration[6.0]
  def change
  	rename_table :participants, :memberships
  end
end
