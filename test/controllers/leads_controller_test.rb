require 'test_helper'

class LeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lead = Lead.new(first_name: "Joe", last_name: "Schmo", phone_number: "5555555555", note: "Thank you for choosing Pingsurance" )
  end

  test "should get index" do 
    get leads_url
    assert_response :success
  end
end
