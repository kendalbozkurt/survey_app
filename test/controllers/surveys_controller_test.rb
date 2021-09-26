require 'test_helper'

class SurveysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get surveys_url
    assert_response :success
    assert_equal "index", @controller.action_name
    assert_match "Surveys", @response.body
  end

  test "should create survey" do
    post surveys_url, params: {survey: {title: "Survey 1", description: "Lorem ipsum ..",
                                        questions_attributes: {"1632645080338": {question: "Q 1", question_type: "paragraph"}, "1632645087795":
                                            {question: "Q 2", question_type: "option",
                                             question_options_attributes: {"1632645093514": {name: "Option 1"}, "1632645100772": {name: "Option 2"}}}}}}
    assert_redirected_to surveys_path
  end
end
