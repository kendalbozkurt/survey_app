class Question < ApplicationRecord
  belongs_to :survey, required: true
  has_many :question_options
  accepts_nested_attributes_for :question_options, :allow_destroy => true

  validates :question, presence: true
end
