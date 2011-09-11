class AddPrimaryToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :primary, :boolean
  end
end
