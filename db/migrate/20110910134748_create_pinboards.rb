class CreatePinboards < ActiveRecord::Migration
  def change
    create_table :pinboards do |t|
      t.string :title
      t.text :summary
      t.string :url
      t.datetime :pubat

      t.timestamps
    end
  end
end
