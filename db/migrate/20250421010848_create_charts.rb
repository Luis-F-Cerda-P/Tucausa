class CreateCharts < ActiveRecord::Migration[8.0]
  def change
    create_table :charts do |t|
      t.string :name

      t.timestamps
    end
  end
end
