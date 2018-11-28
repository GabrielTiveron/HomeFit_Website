require "application_system_test_case"

class TrainersTest < ApplicationSystemTestCase
  setup do
    @trainer = trainers(:one)
  end

  test "visiting the index" do
    visit trainers_url
    assert_selector "h1", text: "Trainers"
  end

  test "creating a Trainer" do
    visit trainers_url
    click_on "New Trainer"

    fill_in "Age", with: @trainer.age
    fill_in "Client", with: @trainer.client_id
    fill_in "Formation", with: @trainer.formation
    fill_in "Institution", with: @trainer.institution
    fill_in "Name", with: @trainer.name
    click_on "Create Trainer"

    assert_text "Trainer was successfully created"
    click_on "Back"
  end

  test "updating a Trainer" do
    visit trainers_url
    click_on "Edit", match: :first

    fill_in "Age", with: @trainer.age
    fill_in "Client", with: @trainer.client_id
    fill_in "Formation", with: @trainer.formation
    fill_in "Institution", with: @trainer.institution
    fill_in "Name", with: @trainer.name
    click_on "Update Trainer"

    assert_text "Trainer was successfully updated"
    click_on "Back"
  end

  test "destroying a Trainer" do
    visit trainers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trainer was successfully destroyed"
  end
end
