class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :title
      t.datetime :deadline
      t.string :place
      t.text :memo
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
