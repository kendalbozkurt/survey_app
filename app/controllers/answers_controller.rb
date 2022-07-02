class AnswersController < ApplicationController
  before_action :set_survey, only: [:new, :create]

  def index
    @questions = Question.select("questions.*, COUNT(answers.id) as answers_count").joins(:answers).includes(:survey).group("questions.id").distinct
  end

  def new

  end

  def create
    @answers = Answer.create(params['survey']['answers'].values)
    if @answers.pluck(:id).compact.empty?
      flash['danger'] = ["You must answer at least one question"]
      redirect_to new_survey_answers_path(@survey)
    else
      redirect_to answers_path
    end
  end

  private
  def set_survey
    @survey = Survey.find(params[:survey_id])
  end
end
