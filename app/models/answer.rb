class Answer < ApplicationRecord
  belongs_to :question, required: true
  belongs_to :question_option, required: false
end

