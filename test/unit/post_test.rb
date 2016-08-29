require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should have a valid factories" do
    assert FactoryGirl.build(:post).valid?
    assert FactoryGirl.build(:unpublished_post).valid?
  end
end
