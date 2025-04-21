class CreateCourts < ActiveRecord::Migration[8.0]
  def change
    create_table :courts do |t|
      t.string :description

      t.timestamps
    end
  end
end
