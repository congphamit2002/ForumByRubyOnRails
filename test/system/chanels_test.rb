require "application_system_test_case"

class ChanelsTest < ApplicationSystemTestCase
  setup do
    @chanel = chanels(:one)
  end

  test "visiting the index" do
    visit chanels_url
    assert_selector "h1", text: "Chanels"
  end

  test "should create chanel" do
    visit chanels_url
    click_on "New chanel"

    fill_in "Chanel", with: @chanel.chanel
    click_on "Create Chanel"

    assert_text "Chanel was successfully created"
    click_on "Back"
  end

  test "should update Chanel" do
    visit chanel_url(@chanel)
    click_on "Edit this chanel", match: :first

    fill_in "Chanel", with: @chanel.chanel
    click_on "Update Chanel"

    assert_text "Chanel was successfully updated"
    click_on "Back"
  end

  test "should destroy Chanel" do
    visit chanel_url(@chanel)
    click_on "Destroy this chanel", match: :first

    assert_text "Chanel was successfully destroyed"
  end
end
