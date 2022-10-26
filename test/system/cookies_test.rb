require "application_system_test_case"

class CookiesTest < ApplicationSystemTestCase
  setup do
    @cooky = cookies(:one)
  end

  test "visiting the index" do
    visit cookies_url
    assert_selector "h1", text: "Cookies"
  end

  test "should create cookie" do
    visit cookies_url
    click_on "New cookie"

    click_on "Create Cookie"

    assert_text "Cookie was successfully created"
    click_on "Back"
  end

  test "should update Cookie" do
    visit cooky_url(@cooky)
    click_on "Edit this cookie", match: :first

    click_on "Update Cookie"

    assert_text "Cookie was successfully updated"
    click_on "Back"
  end

  test "should destroy Cookie" do
    visit cooky_url(@cooky)
    click_on "Destroy this cookie", match: :first

    assert_text "Cookie was successfully destroyed"
  end
end
