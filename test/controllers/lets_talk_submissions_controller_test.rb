require "test_helper"

class LetsTalkSubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lets_talk_submission = lets_talk_submissions(:one)
  end

  test "should get index" do
    get lets_talk_submissions_url
    assert_response :success
  end

  test "should get new" do
    get new_lets_talk_submission_url
    assert_response :success
  end

  test "should create lets_talk_submission" do
    assert_difference("LetsTalkSubmission.count") do
      post lets_talk_submissions_url, params: { lets_talk_submission: { email: @lets_talk_submission.email, fullname: @lets_talk_submission.fullname, how_can_i_help: @lets_talk_submission.how_can_i_help } }
    end

    assert_redirected_to lets_talk_submission_url(LetsTalkSubmission.last)
  end

  test "should show lets_talk_submission" do
    get lets_talk_submission_url(@lets_talk_submission)
    assert_response :success
  end

  test "should get edit" do
    get edit_lets_talk_submission_url(@lets_talk_submission)
    assert_response :success
  end

  test "should update lets_talk_submission" do
    patch lets_talk_submission_url(@lets_talk_submission), params: { lets_talk_submission: { email: @lets_talk_submission.email, fullname: @lets_talk_submission.fullname, how_can_i_help: @lets_talk_submission.how_can_i_help } }
    assert_redirected_to lets_talk_submission_url(@lets_talk_submission)
  end

  test "should destroy lets_talk_submission" do
    assert_difference("LetsTalkSubmission.count", -1) do
      delete lets_talk_submission_url(@lets_talk_submission)
    end

    assert_redirected_to lets_talk_submissions_url
  end
end
