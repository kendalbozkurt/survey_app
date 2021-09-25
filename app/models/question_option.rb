class QuestionOption < ApplicationRecord
  belongs_to :question, required: true

end
