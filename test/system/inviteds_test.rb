require "application_system_test_case"

class InvitedsTest < ApplicationSystemTestCase
  setup do
    @invited = inviteds(:one)
  end

  test "visiting the index" do
    visit inviteds_url
    assert_selector "h1", text: "Inviteds"
  end

  test "creating a Invited" do
    visit inviteds_url
    click_on "New Invited"

    click_on "Create Invited"

    assert_text "Invited was successfully created"
    click_on "Back"
  end

  test "updating a Invited" do
    visit inviteds_url
    click_on "Edit", match: :first

    click_on "Update Invited"

    assert_text "Invited was successfully updated"
    click_on "Back"
  end

  test "destroying a Invited" do
    visit inviteds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invited was successfully destroyed"
  end
end
