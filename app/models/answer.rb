class Answer < ApplicationRecord
  belongs_to :question, required: true
  belongs_to :question_option, required: false

  validates :question_option_id, presence: true, unless: :answer_text
  validates :answer_text, presence: true, unless: :question_option_id
end

