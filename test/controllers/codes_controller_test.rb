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
        post "/codes.json", params: { name: "app developer", location: "miami", height: 1150000 }
        assert_response 200
      end
    end 
    


  test "show" do 
    get "/codes/#{Code.first.id}.json"
    assert_response 200 
    
    data = JSON.parse(response.body)
    assert_equal ["id", "created_at", "updated_at", "url", "name", "location", "salary"], data.keys
  end
  
  test "update" do 
    code = Code.first
    patch "/codes/#{code.id}.json", params: { "debugger"}
    assert_response 200

    
    
    data = JSON.parse(response.body)
    assert_equal "debugger", data["junior developer"]
     
  end 
end 