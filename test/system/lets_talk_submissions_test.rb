require "application_system_test_case"

class LetsTalkSubmissionsTest < ApplicationSystemTestCase
  setup do
    @lets_talk_submission = lets_talk_submissions(:one)
  end

  test "visiting the index" do
    visit lets_talk_submissions_url
    assert_selector "h1", text: "Lets talk submissions"
  end

  test "should create lets talk submission" do
    visit lets_talk_submissions_url
    click_on "New lets talk submission"

    fill_in "Email", with: @lets_talk_submission.email
    fill_in "Fullname", with: @lets_talk_submission.fullname
    fill_in "How can i help", with: @lets_talk_submission.how_can_i_help
    click_on "Create Lets talk submission"

    assert_text "Lets talk submission was successfully created"
    click_on "Back"
  end

  test "should update Lets talk submission" do
    visit lets_talk_submission_url(@lets_talk_submission)
    click_on "Edit this lets talk submission", match: :first

    fill_in "Email", with: @lets_talk_submission.email
    fill_in "Fullname", with: @lets_talk_submission.fullname
    fill_in "How can i help", with: @lets_talk_submission.how_can_i_help
    click_on "Update Lets talk submission"

    assert_text "Lets talk submission was successfully updated"
    click_on "Back"
  end

  test "should destroy Lets talk submission" do
    visit lets_talk_submission_url(@lets_talk_submission)
    click_on "Destroy this lets talk submission", match: :first

    assert_text "Lets talk submission was successfully destroyed"
  end
end
