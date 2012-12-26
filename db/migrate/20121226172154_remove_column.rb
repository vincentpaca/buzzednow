class RemoveColumn < ActiveRecord::Migration
  def up
    remove_column :photos, :public_tmp
  end
end
