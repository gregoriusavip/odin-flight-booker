class CreatePassengers < ActiveRecord::Migration[8.0]
  def change
    create_table :passengers do |t|
      t.timestamps
      t.string :name
      t.string :email
    end
  end
end
