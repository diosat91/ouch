class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.text :description
      t.string :activity

      t.timestamps
    end
  end
end
