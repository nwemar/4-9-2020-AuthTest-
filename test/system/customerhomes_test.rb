require "application_system_test_case"

class CustomerhomesTest < ApplicationSystemTestCase
  setup do
    @customerhome = customerhomes(:one)
  end

  test "visiting the index" do
    visit customerhomes_url
    assert_selector "h1", text: "Customerhomes"
  end

  test "creating a Customerhome" do
    visit customerhomes_url
    click_on "New Customerhome"

    click_on "Create Customerhome"

    assert_text "Customerhome was successfully created"
    click_on "Back"
  end

  test "updating a Customerhome" do
    visit customerhomes_url
    click_on "Edit", match: :first

    click_on "Update Customerhome"

    assert_text "Customerhome was successfully updated"
    click_on "Back"
  end

  test "destroying a Customerhome" do
    visit customerhomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customerhome was successfully destroyed"
  end
end
