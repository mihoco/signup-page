require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should validate age succeed" do
    user = User.new(email: "rubytest@test.com", 
                    firstname:"Ruby",
                    lastname: "Rail",
                    password: "testpass",
                    dob: 15.years.ago)
    assert user.validate_age
  end

  test "should validate age fail" do
    user = User.new(email: "rubytest@test.com", 
                    firstname:"Ruby",
                    lastname: "Rail",
                    password: "testpass",
                    dob: 16.years.ago)
                    
    assert_not user.validate_age
  end
end
