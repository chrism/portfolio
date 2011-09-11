class RemoveTypeFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :type
  end

  def down
    add_column :projects, :type, :string
  end
end
