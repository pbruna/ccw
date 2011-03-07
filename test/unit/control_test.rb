require 'test_helper'

class ControlTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Control.new.valid?
  end
end
