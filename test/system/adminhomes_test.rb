require "application_system_test_case"

class AdminhomesTest < ApplicationSystemTestCase
  setup do
    @adminhome = adminhomes(:one)
  end

  test "visiting the index" do
    visit adminhomes_url
    assert_selector "h1", text: "Adminhomes"
  end

  test "creating a Adminhome" do
    visit adminhomes_url
    click_on "New Adminhome"

    click_on "Create Adminhome"

    assert_text "Adminhome was successfully created"
    click_on "Back"
  end

  test "updating a Adminhome" do
    visit adminhomes_url
    click_on "Edit", match: :first

    click_on "Update Adminhome"

    assert_text "Adminhome was successfully updated"
    click_on "Back"
  end

  test "destroying a Adminhome" do
    visit adminhomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adminhome was successfully destroyed"
  end
end
