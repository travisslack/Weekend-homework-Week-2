require('minitest/autorun')
require_relative('../guest.rb')

class TestGuest < Minitest::Test

  def setup 
    @guest1 = Guest.new("Travis")
    @guest2 = Guest.new("David")
  end

  def test_guest_has_name
    assert_equal("Travis", @guest1.name)
    assert_equal("David", @guest2.name)
  end

end