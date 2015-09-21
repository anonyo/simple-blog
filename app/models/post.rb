class Post < ActiveRecord::Base
  def created_at_formatted
    created_at.to_s(:month_day_year)
  end

  def self.find_or_build(params_id)
    params_id ?  Post.find(params_id) : Post.new
  end
end
