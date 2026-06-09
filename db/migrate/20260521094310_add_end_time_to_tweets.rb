class AddEndTimeToTweets < ActiveRecord::Migration[7.2]
  def change
    unless column_exists?(:tweets, :end_time)
     add_column :tweets, :end_time, :datetime
    end
  end
end