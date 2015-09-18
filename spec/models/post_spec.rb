require 'rails_helper'

RSpec.describe Post, :type => :model do
  describe '#created_at_formatted' do
    it 'returns date in Septemper 17, 2015' do
      post = Post.create

      expect(post.created_at_formatted).to eq expected_date
   end
  end
  def expected_date
    "#{Date.today.strftime("%B")} #{Time.now.day}, #{Time.now.year}"
  end
end
