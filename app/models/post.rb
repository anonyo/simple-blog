class Post < ActiveRecord::Base
  def created_at_formatted
    created_at.to_s(:month_day_year)
  end
end
