require "test_helper"

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get courses_index_url
    assert_response :success
  end

  test "should get show" do
    get courses_show_url
    assert_response :success
  end

  test "should get create" do
    get courses_create_url
    assert_response :success
  end

  test "should get update" do
    get courses_update_url
    assert_response :success
  end

  test "should get delete" do
    get courses_delete_url
    assert_response :success
  end
end
