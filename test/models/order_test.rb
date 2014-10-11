require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test 'model validates enough meat is left' do
    order_one = orders(:one)
    order_one.cow_id = cows(:one).id
    order_two = orders(:two)
    order_two.cow_id = cows(:one).id

    assert order_one.valid?
    assert order_two.invalid?
  end
end
