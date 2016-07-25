require 'test_helper'

class PintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pint = pints(:one)
  end

  test "should get index" do
    get pints_url
    assert_response :success
  end

  test "should get new" do
    get new_pint_url
    assert_response :success
  end

  test "should create pint" do
    assert_difference('Pint.count') do
      post pints_url, params: { pint: { description: @pint.description } }
    end

    assert_redirected_to pint_url(Pint.last)
  end

  test "should show pint" do
    get pint_url(@pint)
    assert_response :success
  end

  test "should get edit" do
    get edit_pint_url(@pint)
    assert_response :success
  end

  test "should update pint" do
    patch pint_url(@pint), params: { pint: { description: @pint.description } }
    assert_redirected_to pint_url(@pint)
  end

  test "should destroy pint" do
    assert_difference('Pint.count', -1) do
      delete pint_url(@pint)
    end

    assert_redirected_to pints_url
  end
end
