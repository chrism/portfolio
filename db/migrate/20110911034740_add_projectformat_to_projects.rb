class AddProjectformatToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :projectformat, :string
  end
end
