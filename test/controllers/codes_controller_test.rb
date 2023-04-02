require "test_helper"

class CodesControllerTest < ActionDispatch::IntegrationTest

  test "index" do
    get "/codes.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Code.count, data.length
  end

  test "create" do 
    assert_difference "Code.count", 1 do 
      post "/codes.json", params: { name: "app developer", location: "miami", salary: 115000}
    end 
  end
end 