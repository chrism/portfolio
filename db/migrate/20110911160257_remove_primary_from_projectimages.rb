class RemovePrimaryFromProjectimages < ActiveRecord::Migration
  def up
    remove_column :projectimages, :primary
  end

  def down
    add_column :projectimages, :primary, :boolean
  end
end
