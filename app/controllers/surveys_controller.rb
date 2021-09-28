class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.create(survey_params)
    if @survey.save
      redirect_to surveys_path
    else
      flash.now['danger'] = @survey.errors.full_messages
      render :new
    end
  end

  private
  def survey_params
    params.require(:survey).permit(:title, :description, questions_attributes:
    [
        :question,
        :question_type,
        question_options_attributes: [
            :name
        ]
    ])
  end
end
