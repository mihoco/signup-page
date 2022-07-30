require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get signup_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { email: "rubytest@test.com", 
                                        firstname:"Ruby",
                                        lastname: "Rail",
                                        password: "testpass",
                                        dob: "21/12/1988" } }
    end
    assert_redirected_to welcome_url
  end

  test "should fail create user"  do
    assert_no_difference("User.count") do
      
      post users_url, params: { user: { email: "", 
                                        firstname: "",
                                        lastname: "",
                                        password: "",
                                        dob: "" } }
                                        
    end
    
    assert_includes @response.body, "Password can&#39;t"
    assert_includes @response.body, "Firstname can&#39;t be blank"
    assert_includes @response.body, "Lastname can&#39;t be blank"
    assert_includes @response.body, "Email can&#39;t be blank"
    assert_includes @response.body, "Email is invalid"
    assert_includes @response.body, "Dob can&#39;t be blank"
  end
end
