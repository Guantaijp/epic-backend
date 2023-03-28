require "application_system_test_case"

class DestnationsTest < ApplicationSystemTestCase
  setup do
    @destnation = destnations(:one)
  end

  test "visiting the index" do
    visit destnations_url
    assert_selector "h1", text: "Destnations"
  end

  test "creating a Destnation" do
    visit destnations_url
    click_on "New Destnation"

    click_on "Create Destnation"

    assert_text "Destnation was successfully created"
    click_on "Back"
  end

  test "updating a Destnation" do
    visit destnations_url
    click_on "Edit", match: :first

    click_on "Update Destnation"

    assert_text "Destnation was successfully updated"
    click_on "Back"
  end

  test "destroying a Destnation" do
    visit destnations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Destnation was successfully destroyed"
  end
end
