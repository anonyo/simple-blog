class Post < ActiveRecord::Base
  scope :by_newest, -> { order('created_at desc') }

  def created_at_formatted
    created_at.to_s(:month_day_year)
  end
end
