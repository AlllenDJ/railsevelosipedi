require "application_system_test_case"

class DarbiniekisTest < ApplicationSystemTestCase
  setup do
    @darbinieki = darbiniekis(:one)
  end

  test "visiting the index" do
    visit darbiniekis_url
    assert_selector "h1", text: "Darbiniekis"
  end

  test "creating a Darbinieki" do
    visit darbiniekis_url
    click_on "New Darbinieki"

    fill_in "Beigu laiks", with: @darbinieki.beigu_laiks
    fill_in "Epasts", with: @darbinieki.epasts
    fill_in "Starta laiks", with: @darbinieki.starta_laiks
    fill_in "Telefons", with: @darbinieki.telefons
    fill_in "Uzvards", with: @darbinieki.uzvards
    fill_in "Vards", with: @darbinieki.vards
    click_on "Create Darbinieki"

    assert_text "Darbinieki was successfully created"
    click_on "Back"
  end

  test "updating a Darbinieki" do
    visit darbiniekis_url
    click_on "Edit", match: :first

    fill_in "Beigu laiks", with: @darbinieki.beigu_laiks
    fill_in "Epasts", with: @darbinieki.epasts
    fill_in "Starta laiks", with: @darbinieki.starta_laiks
    fill_in "Telefons", with: @darbinieki.telefons
    fill_in "Uzvards", with: @darbinieki.uzvards
    fill_in "Vards", with: @darbinieki.vards
    click_on "Update Darbinieki"

    assert_text "Darbinieki was successfully updated"
    click_on "Back"
  end

  test "destroying a Darbinieki" do
    visit darbiniekis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Darbinieki was successfully destroyed"
  end
end
