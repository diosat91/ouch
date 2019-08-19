class CreateAccidents < ActiveRecord::Migration[6.0]
  def change
    create_table :accidents do |t|
      t.references :user, null: false, foreign_key: true
      t.references :injury, null: false, foreign_key: true
      t.text :description
      t.date :occurrence_date
      t.date :recovery_date
      t.string :sport

      t.timestamps
    end
  end
end
