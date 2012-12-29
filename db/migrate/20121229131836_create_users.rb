class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :image_url
      t.string :link
      t.boolean :verified

      t.timestamps
    end
  end
end
