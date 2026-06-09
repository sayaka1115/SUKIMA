class TodosController < ApplicationController

  def today
    @today_todos =
      Tweet.where.not(deadline: nil)
           .order(:deadline)
           .limit(3)
  end

end