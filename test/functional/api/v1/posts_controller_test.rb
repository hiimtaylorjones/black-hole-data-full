require 'test_helper'

class Api::V1::PostsControllerTest < ActionDispatch::IntegrationTest

  test "show route" do
    post = build_stubbed(:post)
    get :show, params: { id: post.id }
    resp = JSON.parse(response.body)
    assert_equal post.as_json, resp
  end

end
