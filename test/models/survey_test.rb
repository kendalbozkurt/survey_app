require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  test "should not save survey without question" do
    survey = Survey.new
    survey.title = 'Survey test'
    assert_not survey.save, "Saved the survey without a question"
  end

  test "should not save survey without title" do
    survey = Survey.new
    survey.questions.new(question: 'Question 1')
    assert_not survey.save, "Saved the survey without a question"
  end

  test "should save survey with title and question" do
    survey = Survey.new
    survey.title = 'Survey test'
    survey.questions.new(question: 'Question 1')
    assert survey.save, "Could not save the survey with a question and title"
  end
end
