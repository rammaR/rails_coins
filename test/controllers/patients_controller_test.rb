require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get patients_index_url
    assert_response :success
  end

  test "should get show" do
    get patients_show_url
    assert_response :success
  end

  test "should get create" do
    get patients_create_url
    assert_response :success
  end

  test "should get delete" do
    get patients_delete_url
    assert_response :success
  end

  test "should get edit" do
    get patients_edit_url
    assert_response :success
  end
end
