class CreateInjuries < ActiveRecord::Migration[6.0]
  def change
    create_table :injuries do |t|
      t.string :body_part
      t.string :problem
      t.integer :estimated_recovery_time

      t.timestamps
    end
  end
end
