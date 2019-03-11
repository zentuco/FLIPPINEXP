class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :number_guests
      t.integer :price
      t.datetime :start_date
      t.datetime :end_date
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end
