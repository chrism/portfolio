class RemovePrimaryFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :primary
  end

  def down
    add_column :projects, :primary, :boolean
  end
end
