class AddEndTimeToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :end_time, :time
  end
end
