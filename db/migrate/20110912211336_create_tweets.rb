class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :message
      t.datetime :pub_at

      t.timestamps
    end
  end
end
