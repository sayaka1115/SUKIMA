class AddStartTimeToTweets < ActiveRecord::Migration[7.2]
  def change
   unless column_exists?(:tweets, :start_time)
    add_column :tweets, :start_time, :datetime
   end
  end
end