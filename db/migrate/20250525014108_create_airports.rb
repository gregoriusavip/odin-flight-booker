class CreateAirports < ActiveRecord::Migration[8.0]
  def change
    create_table :airports do |t|
      t.timestamps
      t.string :code
    end
  end
end
