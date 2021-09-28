require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get answers_url
    assert_response :success
    assert_equal "index", @controller.action_name
    assert_match "Answers", @response.body
  end

  test "should create answers" do
    post answers_url, params: {survey: {answers: {"answer-1": {"question_id": "1", "answer_text": "answer 1"}}}}
    assert_redirected_to answers_path
  end
end
