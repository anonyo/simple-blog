class Post < ActiveRecord::Base
  scope :by_newest, Post::Scopes::ByNewest.new
end
