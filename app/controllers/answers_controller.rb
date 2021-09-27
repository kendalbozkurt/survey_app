class AnswersController < ApplicationController
  before_action :set_survey, only: [:new]

  def index

  end

  def new

  end

  def create
    @answers = Answer.create(answers_params)
    if @answers.present?
      redirect_to answers_path
    else
      flash.now['danger'] = @answers.errors.full_messages
      render :new
    end
  end

  private
  def set_survey
    @survey = Survey.find(params[:survey_id])
  end

  def answers_params
    params.require(:survey).permit(answers: [:question_id, :answer_text, :question_option_id]).require(:answers)
  end
end
