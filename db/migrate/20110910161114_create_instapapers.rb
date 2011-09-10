class CreateInstapapers < ActiveRecord::Migration
  def change
    create_table :instapapers do |t|
      t.string :title
      t.string :url
      t.datetime :pubat

      t.timestamps
    end
  end
end
