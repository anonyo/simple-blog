class PostPresenter < Struct.new(:post, :view)
  def created_at_formatted
    post.created_at.to_s(:month_day_year)
  end
end
