class AddTmpToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :public_tmp, :string
  end
end
