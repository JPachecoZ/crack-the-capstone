require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get students_index_url
    assert_response :success
  end

  test "should get show" do
    get students_show_url
    assert_response :success
  end

  test "should get create" do
    get students_create_url
    assert_response :success
  end

  test "should get update" do
    get students_update_url
    assert_response :success
  end

  test "should get delete" do
    get students_delete_url
    assert_response :success
  end
end
