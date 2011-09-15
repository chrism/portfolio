class ChangeDatatypeForPubatGoodreads < ActiveRecord::Migration
  def up
    change_table :goodreads do |t|
      t.change :pub_at, :datetime
    end
  end

  def down
    change_table :goodreads do |t|
      t.change :pub_at, :date
    end
  end
end
