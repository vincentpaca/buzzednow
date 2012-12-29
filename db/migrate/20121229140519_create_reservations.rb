class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :item_id
      t.integer :user_id
      t.string :contact_number

      t.timestamps
    end
  end
end
