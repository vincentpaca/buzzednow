class RenamePublicColumn < ActiveRecord::Migration
  def change
    rename_column :photos, :public_id, :public
  end
end
