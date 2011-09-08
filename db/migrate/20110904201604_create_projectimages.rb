class CreateProjectimages < ActiveRecord::Migration
  def change
    create_table :projectimages do |t|
      t.string :url
      t.references :project

      t.timestamps
    end
    add_index :projectimages, :project_id
  end
end
