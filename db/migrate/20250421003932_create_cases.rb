class CreateCases < ActiveRecord::Migration[8.0]
  def change
    create_table :cases do |t|
      t.string :description
      t.string :admission_identifier

      t.timestamps
    end
  end
end
