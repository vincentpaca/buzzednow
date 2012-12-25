class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :item_id
      t.string :public_id

      t.timestamps
    end
  end
end
