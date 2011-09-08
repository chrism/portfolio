class CreateCategoriesProjects < ActiveRecord::Migration
  def change
    create_table :categories_projects, :id => false do |t|
      t.integer :category_id
      t.integer :project_id
    end
  end
end
