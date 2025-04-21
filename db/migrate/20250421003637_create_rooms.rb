class CreateRooms < ActiveRecord::Migration[8.0]
  def change
    create_table :rooms do |t|
      t.string :description
      t.belongs_to :court, null: false, foreign_key: true

      t.timestamps
    end
  end
end
