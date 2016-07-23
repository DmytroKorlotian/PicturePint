require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get faq" do
    get contact_faq_url
    assert_response :success
  end

end
