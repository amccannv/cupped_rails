require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @coffee = coffees(:ethiopian)
    @review = @user.reviews.build(coffee: @coffee, content: 'Lorem ipsum', rating: 1.0)
  end

  test 'should be valid' do
    assert @review.valid?
  end

  test 'user id should be present' do
    @review.user_id = nil
    assert_not @review.valid?
  end

  test 'rating should be present' do
    @review.rating = nil
    assert_not @review.valid?
  end

  test 'coffee should be present' do
    @review.coffee = nil
    assert_not @review.valid?
  end

  test 'content should not be over 2000 chars' do
    @review.content = 'a' * 2001
    assert_not @review.valid?
  end

  test 'order should be most recent first' do
    assert_equal reviews(:most_recent), Review.first
  end
end
