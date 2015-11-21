class Post < ActiveRecord::Base
  scope :by_newest, -> { order('created_at desc') }
end
