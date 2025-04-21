class CreateSchedules < ActiveRecord::Migration[8.0]
  def change
    create_table :schedules do |t|
      t.date :date
      t.references :chart, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.references :case, null: false, foreign_key: true
      t.string :rapporteur
      t.string :judge
      t.string :attorney

      t.timestamps
    end
  end
end
