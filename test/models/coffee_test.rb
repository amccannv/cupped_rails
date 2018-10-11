require 'test_helper'

class CoffeeTest < ActiveSupport::TestCase

  def setup
    @roaster = roasters(:pilot)
    @coffee = @roaster.coffees.build(name: 'ethiopian')
  end

  test 'should be valid' do
    assert @coffee.valid?
  end

  test 'name should be present' do
    @coffee.name = nil
    assert_not @coffee.valid?
  end

  test 'roaster should be present' do
    @coffee.roaster = nil
    assert_not @coffee.valid?
  end
end
