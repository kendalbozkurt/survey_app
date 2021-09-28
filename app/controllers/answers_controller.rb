class AnswersController < ApplicationController
  before_action :set_survey, only: [:new]

  def index
    @questions = Question.all
  end

  def new

  end

  def create
    @answers = Answer.create(params['survey']['answers'].values)
    if @answers.present?
      redirect_to answers_path
    else
      render :new
    end
  end

  private
  def set_survey
    @survey = Survey.find(params[:survey_id])
  end
end
