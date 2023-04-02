require "test_helper"

class CodesControllerTest < ActionDispatch::IntegrationTest

  test "index" do
    get "/codes.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Code.count, data.length
  end

end
