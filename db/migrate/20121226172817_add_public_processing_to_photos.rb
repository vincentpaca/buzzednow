class AddPublicProcessingToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :public_processing, :boolean
  end
end
