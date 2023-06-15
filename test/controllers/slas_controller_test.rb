require 'test_helper'

class SlasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sla = slas(:one)
  end

  test "should get index" do
    get slas_url
    assert_response :success
  end

  test "should get new" do
    get new_sla_url
    assert_response :success
  end

  test "should create sla" do
    assert_difference('Sla.count') do
      post slas_url, params: { sla: { category_id: @sla.category_id, period: @sla.period, status: @sla.status } }
    end

    assert_redirected_to sla_url(Sla.last)
  end

  test "should show sla" do
    get sla_url(@sla)
    assert_response :success
  end

  test "should get edit" do
    get edit_sla_url(@sla)
    assert_response :success
  end

  test "should update sla" do
    patch sla_url(@sla), params: { sla: { category_id: @sla.category_id, period: @sla.period, status: @sla.status } }
    assert_redirected_to sla_url(@sla)
  end

  test "should destroy sla" do
    assert_difference('Sla.count', -1) do
      delete sla_url(@sla)
    end

    assert_redirected_to slas_url
  end
end
