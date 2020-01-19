require "application_system_test_case"

class AiesecjournalsTest < ApplicationSystemTestCase
  setup do
    @aiesecjournal = aiesecjournals(:one)
  end

  test "visiting the index" do
    visit aiesecjournals_url
    assert_selector "h1", text: "Aiesecjournals"
  end

  test "creating a Aiesecjournal" do
    visit aiesecjournals_url
    click_on "New Aiesecjournal"

    fill_in "Event", with: @aiesecjournal.event
    fill_in "Failurestory", with: @aiesecjournal.failurestory
    fill_in "Goal", with: @aiesecjournal.goal
    fill_in "Note", with: @aiesecjournal.note
    fill_in "Successstory", with: @aiesecjournal.successstory
    click_on "Create Aiesecjournal"

    assert_text "Aiesecjournal was successfully created"
    click_on "Back"
  end

  test "updating a Aiesecjournal" do
    visit aiesecjournals_url
    click_on "Edit", match: :first

    fill_in "Event", with: @aiesecjournal.event
    fill_in "Failurestory", with: @aiesecjournal.failurestory
    fill_in "Goal", with: @aiesecjournal.goal
    fill_in "Note", with: @aiesecjournal.note
    fill_in "Successstory", with: @aiesecjournal.successstory
    click_on "Update Aiesecjournal"

    assert_text "Aiesecjournal was successfully updated"
    click_on "Back"
  end

  test "destroying a Aiesecjournal" do
    visit aiesecjournals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aiesecjournal was successfully destroyed"
  end
end
