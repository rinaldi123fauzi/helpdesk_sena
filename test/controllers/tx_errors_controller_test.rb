require 'test_helper'

class TxErrorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tx_error = tx_errors(:one)
  end

  test "should get index" do
    get tx_errors_url
    assert_response :success
  end

  test "should get new" do
    get new_tx_error_url
    assert_response :success
  end

  test "should create tx_error" do
    assert_difference('TxError.count') do
      post tx_errors_url, params: { tx_error: { description: @tx_error.description } }
    end

    assert_redirected_to tx_error_url(TxError.last)
  end

  test "should show tx_error" do
    get tx_error_url(@tx_error)
    assert_response :success
  end

  test "should get edit" do
    get edit_tx_error_url(@tx_error)
    assert_response :success
  end

  test "should update tx_error" do
    patch tx_error_url(@tx_error), params: { tx_error: { description: @tx_error.description } }
    assert_redirected_to tx_error_url(@tx_error)
  end

  test "should destroy tx_error" do
    assert_difference('TxError.count', -1) do
      delete tx_error_url(@tx_error)
    end

    assert_redirected_to tx_errors_url
  end
end
