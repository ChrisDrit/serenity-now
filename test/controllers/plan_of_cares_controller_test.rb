require "test_helper"

class PlanOfCaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_of_care = plan_of_cares(:one)
  end

  test "should get index" do
    get plan_of_cares_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_of_care_url
    assert_response :success
  end

  test "should create plan_of_care" do
    assert_difference("PlanOfCare.count") do
      post plan_of_cares_url, params: { plan_of_care: { description: @plan_of_care.description } }
    end

    assert_redirected_to plan_of_care_url(PlanOfCare.last)
  end

  test "should show plan_of_care" do
    get plan_of_care_url(@plan_of_care)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_of_care_url(@plan_of_care)
    assert_response :success
  end

  test "should update plan_of_care" do
    patch plan_of_care_url(@plan_of_care), params: { plan_of_care: { description: @plan_of_care.description } }
    assert_redirected_to plan_of_care_url(@plan_of_care)
  end

  test "should destroy plan_of_care" do
    assert_difference("PlanOfCare.count", -1) do
      delete plan_of_care_url(@plan_of_care)
    end

    assert_redirected_to plan_of_cares_url
  end
end
