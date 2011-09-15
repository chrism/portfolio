class CreateGoodreads < ActiveRecord::Migration
  def change
    create_table :goodreads do |t|
      t.string :title
      t.date :pub_at
      t.integer :book_id
      t.string :book_small_image_url
      t.string :book_medium_image_url
      t.string :book_large_image_url
      t.string :author_name
      t.text :description

      t.timestamps
    end
  end
end
