require 'test_helper'

class RoasterTest < ActiveSupport::TestCase

  def setup
    @roaster = roasters(:pilot)
  end

  test 'should be valid' do
    assert @roaster.valid?
  end

  test 'name should be present' do
    @roaster.name = nil
    assert_not @roaster.valid?
  end
end
