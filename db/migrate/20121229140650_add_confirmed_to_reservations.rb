class AddConfirmedToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :confirmed, :boolean
  end
end
